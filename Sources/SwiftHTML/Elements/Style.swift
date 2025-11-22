import SGML

/// The `<style>` tag is used to define style information (CSS) for a document.
///
/// Inside the `<style>` element you specify how HTML elements should render in a browser.
public struct Style: StandardTextTag, MetadataContent {

    public let text: String

    public init(
        _ text: String
    ) {
        self.text = text
    }
}

//extension Style {
//
//    /// Specifies what media/device the media resource is optimized for
//    public func media(_ value: String) -> Self {
//        attribute("media", value)
//    }
//
//    /// Specifies what media/device the linked document is optimized for
//    ///
//    /// If multiple queries were provided they're going to be concatenated with an `and` operand
//    public func media(_ queries: MediaQuery...) -> Self {
//        media(queries)
//    }
//
//    /// Specifies what media/device the linked document is optimized for
//    ///
//    /// If multiple queries were provided they're going to be concatenated with an `and` operand
//    public func media(_ queries: [MediaQuery]) -> Self {
//        media(queries.map(\.value).joined(separator: " and "))
//    }
//
//    /// Specifies the media type (text/css) of the `<style>` tag
//    public func css() -> Self {
//        attribute("type", "text/css")
//    }
//}
