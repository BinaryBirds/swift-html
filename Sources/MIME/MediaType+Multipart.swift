extension MediaType {

    public enum Multipart {

        static let name: String = "multipart"

        public static func alternative() -> MediaType {
            .init(
                type: name,
                subtype: "alternative"
            )
        }

        public static func appledouble() -> MediaType {
            .init(
                type: name,
                subtype: "appledouble"
            )
        }

        public static func byteranges() -> MediaType {
            .init(
                type: name,
                subtype: "byteranges"
            )
        }

        public static func digest() -> MediaType {
            .init(
                type: name,
                subtype: "digest"
            )
        }

        public static func encrypted() -> MediaType {
            .init(
                type: name,
                subtype: "encrypted"
            )
        }

        public static func formData(
            boundary value: String
        ) -> MediaType {
            .init(
                type: name,
                subtype: "form-data",
                parameter: .init(
                    key: "boundary",
                    value: value
                )
            )
        }

        public static func headerSet() -> MediaType {
            .init(
                type: name,
                subtype: "header-set"
            )
        }

        public static func mixed() -> MediaType {
            .init(
                type: name,
                subtype: "mixed"
            )
        }

        public static func multilingual() -> MediaType {
            .init(
                type: name,
                subtype: "multilingual"
            )
        }

        public static func parallel() -> MediaType {
            .init(
                type: name,
                subtype: "parallel"
            )
        }

        public static func related() -> MediaType {
            .init(
                type: name,
                subtype: "related"
            )
        }

        public static func report() -> MediaType {
            .init(
                type: name,
                subtype: "report"
            )
        }

        public static func signed() -> MediaType {
            .init(
                type: name,
                subtype: "signed"
            )
        }

        public static func vndBintMedPlus() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bint.med-plus"
            )
        }

        public static func voiceMessage() -> MediaType {
            .init(
                type: name,
                subtype: "voice-message"
            )
        }

        public static func xMixedReplace() -> MediaType {
            .init(
                type: name,
                subtype: "x-mixed-replace"
            )
        }

    }

}
