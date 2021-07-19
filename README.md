# SwiftHtml

An awesome Swift HTML DSL library using result builders.

```swift
let doc = Document(.html5) {
    Html {
        Head {
            Meta()
                .name("og:title")
                .content("My website")
            Link()
                .rel("stylesheet")
                .href("./css/style.css")
                
        }
        Body {
            Div {
                H1("Lorem ipsum")
                P("Dolor sit amet")
                A("Hello Swift HTML DSL!").href("https://swift.org")
            }
        }
    }
}
print(doc.html)
```

## Credits & references

- [HTML Reference](https://www.w3schools.com/tags/default.asp)
