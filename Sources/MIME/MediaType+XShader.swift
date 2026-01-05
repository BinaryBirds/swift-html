extension MediaType {

    public enum XShader {

        static let name: String = "x-shader"

        public static func xFragment() -> MediaType {
            .init(
                type: name,
                subtype: "x-fragment"
            )
        }

        public static func xVertex() -> MediaType {
            .init(
                type: name,
                subtype: "x-vertex"
            )
        }

    }

}
