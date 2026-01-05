extension MediaType {

    public enum Application {

        static let name: String = "application"

        public static func json() -> MediaType {
            .init(
                type: name,
                subtype: "json",
                possibleExtensions: [
                    "4dform",
                    "4dproject",
                    "avsc",
                    "b3dm",
                    "cmpt",
                    "cryproject",
                    "epj",
                    "geojson",
                    "gltf",
                    "har",
                    "i3dm",
                    "ice",
                    "ipynb",
                    "jq",
                    "json",
                    "json-tmlanguage",
                    "json5",
                    "jsonl",
                    "jsonld",
                    "map",
                    "maxhelp",
                    "maxpat",
                    "maxproj",
                    "mcmeta",
                    "mup",
                    "mxt",
                    "pat",
                    "pnts",
                    "spm",
                    "tfstate",
                    "tfstatebackup",
                    "topojson",
                    "webapp",
                    "webmanifest",
                    "yy",
                    "yyp",
                ]
            )
        }
    }

}
