# SwiftHtml

An awesome Swift HTML DSL library using result builders.

```swift
import SwiftHtml 

let doc = Document(.html) {
    Html {
        Head {
            Title("Hello Swift HTML DSL")
            
            Meta().charset("utf-8")
            Meta().name(.viewport).content("width=device-width, initial-scale=1")

            Link(rel: .stylesheet).href("./css/style.css")
        }
        Body {
            Main {
                Div {
                    Section {
                        Img(src: "./images/swift.png", alt: "Swift Logo")
                            .title("Picture of the Swift Logo")
                        H1("Lorem ipsum")
                            .class("red")
                        P("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                            .class(["green", "blue"])
                            .spellcheck(false)
                    }

                    A("Download SwiftHtml now!")
                        .href("https://github.com/binarybirds/swift-html/")
                        .target(.blank)
                        .download()
                        
                    Abbr("WTFPL")
                        .title("Do What The Fuck You Want To Public License")
                }
            }
            .class("container")

            Script().src("./js/main.js").async()
        }
    }
}

let html = DocumentRenderer(minify: false, indent: 2).render(doc)
print(html)
```


## Install

You can simply use `SwiftHtml` as a dependency via the Swift Package Manager:

```swift
.package(url: "https://github.com/binarybirds/swift-html", from: "1.6.0"),
```

Add the `SwiftHtml` product from the `swift-html` package as a dependency to your target:

```swift
.product(name: "SwiftHtml", package: "swift-html"),
```

Import the framework:

```swift
import SwiftHtml
```

That's it.


## Creating custom tags

You can define your own custom tags by subclassing the `Tag` or `EmptyTag` class. 

You can follow the same pattern if you take a look at the core tags.

```swift
open class Div: Tag {

}

// <div></div> - standard tag

open class Br: EmptyTag {
    
}
// <br> - no closing tag

```

By default the name of the tag is automatically derived from the class name (lowercased), but you can also create your own tag type & name by overriding the `createNode()` class function.

```swift
open class LastBuildDate: Tag {

    open override class func createNode() -> Node {
        Node(type: .standard, name: "lastBuildDate")
    }
}

// <lastBuildDate></lastBuildDate> - standard tag with custom name
```

It is also possible to create tags with altered content or default attributes.

```swift
open class Description: Tag {
    
    public init(_ contents: String) {
        super.init()
        setContents("<![CDATA[" + contents + "]]>")
    }
}
// <description><![CDATA[lorem ipsum]]></description> - content wrapped in CDATA

open class Rss: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(builder())
        setAttributes([
            .init(key: "version", value: "2.0"),
        ])
    }
}
// <rss version="2.0">...</rss> - tag with a default attribute
```

## Attribute management

You can set, add or delete the attributes of a given tag.

```swift
Leaf("example")
    // set (override) the current attributes
    .setAttributes([
        .init(key: "a", value: "foo"),
        .init(key: "b", value: "bar"),
        .init(key: "c", value: "baz"),
    ])
    // add a new attribute using a key & value 
    .attribute("foo", "example")
    // add a new flag attribute (without a value)
    .flagAttribute("bar")
    // delete an attribute by using a key
    .deleteAttribute("b")
    
// <leaf a="foo" c="baz" foo="example" bar></leaf>
```

You can also manage the class atrribute through helper methods.

```swift
Span("foo")
    // set (override) class values 
    .class("a", "b", "c")
    // add new class values   
    .class(add: ["d", "e", "f"])
    // add new class value if the condition is true
    .class(add: "b", true)
    /// remove multiple class values
    .class(remove: ["b", "c", "d"])
    /// remove a class value if the condition is true
    .class(remove: "e", true)

// <span class="a f"></span>
```

You can create your own attribute modifier via an extension.

```swift
public extension Guid {
    
    func isPermalink(_ value: Bool = true) -> Self {
        attribute("isPermalink", String(value))
    }
}
```

There are other built-in type-safe attribute modifiers available on tags.

 
## Composing tags

You can come up with your own `Tag` composition system by introducing a new protocol.

```swift
protocol TagRepresentable {

    func build() -> Tag
}

struct ListComponent: TagRepresentable {

    let items: [String]
    
    init(_ items: [String]) {
        self.items = items
    }

    @TagBuilder
    func build() -> Tag {
        Ul {
            items.map { Li($0) }
        }
    }
}

let tag = ListComponent(["a", "b", "c"]).build()
```

This way it is also possible to extend the `TagBuilder` to support the new protocol.

```swift
extension TagBuilder {

    static func buildExpression(_ expression: TagRepresentable) -> Tag {
        expression.build()
    }
    
    static func buildExpression(_ expression: TagRepresentable) -> [Tag] {
        [expression.build()]
    }

    static func buildExpression(_ expression: [TagRepresentable]) -> [Tag] {
        expression.map { $0.build() }
    }

    static func buildExpression(_ expression: [TagRepresentable]) -> Tag {
        GroupTag {
            expression.map { $0.build() }
        }
    }
}
```

Sometimes you'll need extra parameters for the build function, so you have to call the build method by hand.

In those cases it is recommended to introduce a `render` function instead of using build.

```swift

let tag = WebIndexTemplate(ctx) {
    ListComponent(["a", "b", "c"])
        .render(req)
}
.render(req)
```

If you want to create a lightweight template engine for the [Vapor](https://vapor.codes/) web framework using SwiftHtml, you can see a working example inside the [Feather CMS core](https://github.com/FeatherCMS/feather-core) repository. 


## Credits & references

- [HTML Reference](https://www.w3schools.com/tags/default.asp)
