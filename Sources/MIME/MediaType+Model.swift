extension MediaType {

    public enum Model {

        static let name: String = "model"

        public static func _3mf() -> MediaType {
            .init(
                type: name,
                subtype: "3mf",
                possibleExtensions: [
                    "3mf"
                ]
            )
        }

        public static func e57() -> MediaType {
            .init(
                type: name,
                subtype: "e57"
            )
        }

        public static func gltfJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "gltf",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "gltf"
                ]
            )
        }

        public static func gltfBinary() -> MediaType {
            .init(
                type: name,
                subtype: "gltf-binary",
                possibleExtensions: [
                    "glb"
                ]
            )
        }

        public static func iges() -> MediaType {
            .init(
                type: name,
                subtype: "iges",
                possibleExtensions: [
                    "igs",
                    "iges",
                ]
            )
        }

        public static func jt() -> MediaType {
            .init(
                type: name,
                subtype: "jt",
                possibleExtensions: [
                    "jt"
                ]
            )
        }

        public static func mesh() -> MediaType {
            .init(
                type: name,
                subtype: "mesh",
                possibleExtensions: [
                    "msh",
                    "mesh",
                    "silo",
                ]
            )
        }

        public static func mtl() -> MediaType {
            .init(
                type: name,
                subtype: "mtl",
                possibleExtensions: [
                    "mtl"
                ]
            )
        }

        public static func obj() -> MediaType {
            .init(
                type: name,
                subtype: "obj",
                possibleExtensions: [
                    "obj"
                ]
            )
        }

        public static func prc() -> MediaType {
            .init(
                type: name,
                subtype: "prc",
                possibleExtensions: [
                    "prc"
                ]
            )
        }

        public static func step() -> MediaType {
            .init(
                type: name,
                subtype: "step",
                possibleExtensions: [
                    "step",
                    "stp",
                    "stpnc",
                    "p21",
                    "210",
                ]
            )
        }

        public static func stepXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "step",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "stpx"
                ]
            )
        }

        public static func stepZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "step",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "stpz"
                ]
            )
        }

        public static func stepXmlZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "step-xml",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "stpxz"
                ]
            )
        }

        public static func stl() -> MediaType {
            .init(
                type: name,
                subtype: "stl",
                possibleExtensions: [
                    "stl"
                ]
            )
        }

        public static func u3d() -> MediaType {
            .init(
                type: name,
                subtype: "u3d",
                possibleExtensions: [
                    "u3d"
                ]
            )
        }

        public static func vndBary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bary",
                possibleExtensions: [
                    "bary"
                ]
            )
        }

        public static func vndCld() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cld",
                possibleExtensions: [
                    "cld"
                ]
            )
        }

        public static func vndColladaXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.collada",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dae"
                ]
            )
        }

        public static func vndDwf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dwf",
                possibleExtensions: [
                    "dwf"
                ]
            )
        }

        public static func vndFlatland3dml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.flatland.3dml"
            )
        }

        public static func vndGdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gdl",
                possibleExtensions: [
                    "gdl"
                ]
            )
        }

        public static func vndGsGdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gs-gdl"
            )
        }

        public static func vndGsGdlAlt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gs.gdl"
            )
        }

        public static func vndGtw() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gtw",
                possibleExtensions: [
                    "gtw"
                ]
            )
        }

        public static func vndMomlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.moml",
                    suffix: "xml"
                )
            )
        }

        public static func vndMts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mts",
                possibleExtensions: [
                    "mts"
                ]
            )
        }

        public static func vndOpengex() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.opengex",
                possibleExtensions: [
                    "ogex"
                ]
            )
        }

        public static func vndParasolidTransmitBinary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.parasolid.transmit.binary",
                possibleExtensions: [
                    "x_b"
                ]
            )
        }

        public static func vndParasolidTransmitText() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.parasolid.transmit.text",
                possibleExtensions: [
                    "x_t"
                ]
            )
        }

        public static func vndPythaPyox() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pytha.pyox",
                possibleExtensions: [
                    "pyo",
                    "pyox",
                ]
            )
        }

        public static func vndRosetteAnnotatedDataModel() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rosette.annotated-data-model"
            )
        }

        public static func vndSapVds() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sap.vds",
                possibleExtensions: [
                    "vds"
                ]
            )
        }

        public static func vndUsda() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.usda",
                possibleExtensions: [
                    "usda"
                ]
            )
        }

        public static func vndUsdzZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.usdz",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "usdz"
                ]
            )
        }

        public static func vndValveSourceCompiledMap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.valve.source.compiled-map",
                possibleExtensions: [
                    "bsp"
                ]
            )
        }

        public static func vndVtu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vtu",
                possibleExtensions: [
                    "vtu"
                ]
            )
        }

        public static func vrml() -> MediaType {
            .init(
                type: name,
                subtype: "vrml",
                possibleExtensions: [
                    "wrl",
                    "vrml",
                ]
            )
        }

        public static func x3dBinary() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x3d",
                    suffix: "binary"
                ),
                possibleExtensions: [
                    "x3db",
                    "x3dbz",
                ]
            )
        }

        public static func x3dFastinfoset() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x3d",
                    suffix: "fastinfoset"
                ),
                possibleExtensions: [
                    "x3db"
                ]
            )
        }

        public static func x3dVrml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x3d",
                    suffix: "vrml"
                ),
                possibleExtensions: [
                    "x3dv",
                    "x3dvz",
                ]
            )
        }

        public static func x3dXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x3d",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "x3d",
                    "x3dz",
                ]
            )
        }

        public static func x3dVrmlAlt() -> MediaType {
            .init(
                type: name,
                subtype: "x3d-vrml",
                possibleExtensions: [
                    "x3dv"
                ]
            )
        }

    }

}
