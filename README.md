# SwiftHtml

An awesome Swift HTML DSL library using result builders.

```swift
import SwiftHtml 

let doc = Document {
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
print(doc.html)
```


## Install

You can simply use `SwiftHtml` as a dependency via the Swift Package Manager:

```swift
.package(url: "https://github.com/binarybirds/swift-html", from: "1.0.0"),
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

## Credits & references

- [HTML Reference](https://www.w3schools.com/tags/default.asp)
