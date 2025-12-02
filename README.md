# SwiftHTML

An awesome Swift HTML DSL library using result builders that closely follows the W3C standards.

```swift
import SwiftHTML

let html = Html {
    Head {
        Title("Hello, SwiftHTML!")
        Meta().charset("utf-8")
        Meta().name(.viewport).content("width=device-width, initial-scale=1")
        Link(rel: .stylesheet).href("./css/style.css")
    }
    Body {
        H1("Hello, SwiftHTML!")
        Ul {
            Li("Type-safe HTML DSL for Swift 6+")
            Li("Concurrency-safety; sendable support")
            Li("Contains all the HTML tag definitions")
            Li("RSS, Sitemap, SVG support as well")
        }

        Script(#"console.log("Hello, SwiftHTML!")"#)
        Script().src("./js/main.js").async()
    }
}

let result = Document(type: .html, root: html).render(indent: 4)
print(result) // HTML output
```

## Installation

`SwiftHTML` is distributed through **Swift Package Manager**.

Add the package to your `Package.swift`:

```swift
.package(url: "https://github.com/binarybirds/swift-html", from: "2.0.0"),
```

Then include the `SwiftHTML` product as a dependency for your target:

```swift
.product(name: "SwiftHTML", package: "swift-html"),
```

Import the module in your source files:

```swift
import SwiftHTML
```

The package is now ready to use.


## DOM vs. SGML

The **DOM** library provides the foundational data structures used to construct and render a `Node`-based object tree.  
This tree is composed of the following node types:

- **`CommentNode`** — represents an HTML/XML-style comment (`<!-- comment -->`)
- **`ListNode`** — a container node used to group child nodes
- **`ShortNode`** — a void (self-closing) element representation (`<node>`)
- **`StandardNode`** — a normal element with opening and closing tags (`<node></node>`)
- **`TextNode`** — raw textual content within the tree

These node types form the low-level DOM representation used by the renderer.

---

## SGML Elements

The **SGML** library provides a higher-level API for defining and constructing markup languages.  
It is designed to support the creation of any XML-based format—including **HTML**, **RSS**, **SVG**, and custom schemas.

You can define your own elements by conforming to one of the following protocols:

- **`Element`** — the base protocol representing a generic element backed by a `Node`
- **`Tag`** — a named element; inherits from `Element`
- **`ShortTag`** — a named, void (self-closing) tag; inherits from `Tag`
- **`StandardTag`** — a named element with both opening and closing tags; inherits from `Tag`

### Examples

Here is a minimal example of defining a custom short tag:

```swift
public struct Br: ShortTag {

    public var attributes: AttributeStore

    public init() {
        attributes = .init()
    }
}
```

A standard tag can be represented as follows, including result-builder support provided by the `@ElementBuilder` attribute:

```swift
public struct P: StandardTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        _ contents: String
    ) {
        self.attributes = .init()
        self.children = [
            Text(contents)
        ]
    }

    public init(
        children: [Element]
    ) {
        self.attributes = .init()
        self.children = children
    }

    public init(
        @ElementBuilder _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
```

### Custom tag names

By default, the tag name is automatically derived from the type name (converted to lowercase).  
It is also possible to override the static `name` property manually:

```swift
struct LastBuildDate: StandardTag {
    
    static let name = "lastBuildDate"
    
    // ...
}
```

### Attributes

You can define custom element attributes by conforming to the `Attribute` protocol.  
By default, the attribute name is automatically derived from the type name, but this behavior can be overridden when needed:

```swift
// very simple attribute
struct Class: Attribute {
    var value: String?
    
    init(_ value: Value) {
        self.value = value
    }
}

// custom name and value type
struct Alignment: Attribute {

    enum Value: String {
        case left
        case right
    }

    static let name = "align"
    var value: String?

    init(_ value: Value) {
        self.value = value.rawValue
    }
}
```

You can set, add, or remove attributes—or even modify individual attribute values—on any tag that supports attributes:

```swift
P("Lorem ipsum")
    // set (override) the current attributes
    .setAttribute(Class("note"))
    .setAttributeValueBy(name: "style", value: "color: white;")
    .setAttributes([
        Alignment(.left)
    ])
    // add attribute or value(s) 
    .addAttributeValue(Class("important"))
    .addAttributeValueBy(name: "style", value: "background: black;")
    .addAttributeValues([
        Class("large")
    ])
    // remove attribute or value(s)
    .removeAttributeBy(Class.self)
    .removeAttributeBy(name: "style")
    .removeAttributeValueBy(
        Alignment(.left)
    )
```

There are built-in, type-safe attributes and helper modifiers available for the standard tags.

### Conditions

Use the `check` modifier to evaluate a condition and update an element when the condition is met:

```swift
let condition = false

H1("Lorem ipsum")
    .check(condition) {
        $0.class("foo")
    } else: {
        $0.class("bar")
    }
```

### Container elements

It is also possible to define tags that contain child elements; these are referred to as *container elements*.  
All standard tags support child elements by default.

```swift
// TODO
```


## Credits & references

- [HTML Standard](https://html.spec.whatwg.org/multipage/)
- [HTML Reference](https://www.w3schools.com/tags/default.asp)
