import SGML

/// The `<html>` tag represents the root of an HTML document.
///
/// The `<html>` tag is the container for all other HTML elements (except for the `<!DOCTYPE>` tag).
///
/// **Note:** You should always include the lang attribute inside the `<html>` tag, to declare the language of the Web page. This is meant to assist search engines and browsers.
public struct Html:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier
{

    @resultBuilder
    public enum Builder {

        // Enforce exactly: Head, Body
        public static func buildBlock(
            _ head: Head,
            _ body: Body
        ) -> Html {
            .init(head: head, body: body)
        }
    }

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    public init(
        head: Head,
        body: Body
    ) {
        self.attributes = .init()
        self.children = [
            head,
            body,
        ]
    }

    public init(
        @Builder _ block: () -> Self
    ) {
        self = block()
    }
}

extension Html {

    /// Specifies the XML namespace attribute (If you need your content to conform to XHTML)
    //    public func xmlns() -> Self {
    //        attribute("xmlns", "http://www.w3.org/1999/xhtml")
    //    }
}
