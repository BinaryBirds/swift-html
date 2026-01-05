extension MediaType {

    public enum Font {

        static let name: String = "font"

        public static func collection() -> MediaType {
            .init(
                type: name,
                subtype: "collection",
                possibleExtensions: [
                    "ttc"
                ]
            )
        }

        public static func otf() -> MediaType {
            .init(
                type: name,
                subtype: "otf",
                possibleExtensions: [
                    "otf"
                ]
            )
        }

        public static func sfnt() -> MediaType {
            .init(
                type: name,
                subtype: "sfnt"
            )
        }

        public static func ttf() -> MediaType {
            .init(
                type: name,
                subtype: "ttf",
                possibleExtensions: [
                    "ttf"
                ]
            )
        }

        public static func woff() -> MediaType {
            .init(
                type: name,
                subtype: "woff",
                possibleExtensions: [
                    "woff"
                ]
            )
        }

        public static func woff2() -> MediaType {
            .init(
                type: name,
                subtype: "woff2",
                possibleExtensions: [
                    "woff2"
                ]
            )
        }

    }

}
