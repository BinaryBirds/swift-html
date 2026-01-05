extension MediaType {

    public enum Multipart {

        static let name: String = "multipart"

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
    }
}
