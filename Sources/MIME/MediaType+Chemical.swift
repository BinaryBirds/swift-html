extension MediaType {

    public enum Chemical {

        static let name: String = "chemical"

        public static func xCdx() -> MediaType {
            .init(
                type: name,
                subtype: "x-cdx",
                possibleExtensions: [
                    "cdx"
                ]
            )
        }

        public static func xCif() -> MediaType {
            .init(
                type: name,
                subtype: "x-cif",
                possibleExtensions: [
                    "cif"
                ]
            )
        }

        public static func xCmdf() -> MediaType {
            .init(
                type: name,
                subtype: "x-cmdf",
                possibleExtensions: [
                    "cmdf"
                ]
            )
        }

        public static func xCml() -> MediaType {
            .init(
                type: name,
                subtype: "x-cml",
                possibleExtensions: [
                    "cml"
                ]
            )
        }

        public static func xCsml() -> MediaType {
            .init(
                type: name,
                subtype: "x-csml",
                possibleExtensions: [
                    "csml"
                ]
            )
        }

        public static func xPdb() -> MediaType {
            .init(
                type: name,
                subtype: "x-pdb"
            )
        }

        public static func xXyz() -> MediaType {
            .init(
                type: name,
                subtype: "x-xyz",
                possibleExtensions: [
                    "xyz"
                ]
            )
        }

    }

}
