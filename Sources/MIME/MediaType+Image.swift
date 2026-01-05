extension MediaType {

    public enum Image {

        static let name: String = "image"

        public static func aces() -> MediaType {
            .init(
                type: name,
                subtype: "aces",
                possibleExtensions: [
                    "exr"
                ]
            )
        }

        public static func apng() -> MediaType {
            .init(
                type: name,
                subtype: "apng",
                possibleExtensions: [
                    "apng"
                ]
            )
        }

        public static func avci() -> MediaType {
            .init(
                type: name,
                subtype: "avci",
                possibleExtensions: [
                    "avci"
                ]
            )
        }

        public static func avcs() -> MediaType {
            .init(
                type: name,
                subtype: "avcs",
                possibleExtensions: [
                    "avcs"
                ]
            )
        }

        public static func avif() -> MediaType {
            .init(
                type: name,
                subtype: "avif",
                possibleExtensions: [
                    "avif"
                ]
            )
        }

        public static func bmp() -> MediaType {
            .init(
                type: name,
                subtype: "bmp",
                possibleExtensions: [
                    "bmp",
                    "dib",
                ]
            )
        }

        public static func cgm() -> MediaType {
            .init(
                type: name,
                subtype: "cgm",
                possibleExtensions: [
                    "cgm"
                ]
            )
        }

        public static func dicomRle() -> MediaType {
            .init(
                type: name,
                subtype: "dicom-rle",
                possibleExtensions: [
                    "drle"
                ]
            )
        }

        public static func dpx() -> MediaType {
            .init(
                type: name,
                subtype: "dpx",
                possibleExtensions: [
                    "dpx"
                ]
            )
        }

        public static func emf() -> MediaType {
            .init(
                type: name,
                subtype: "emf",
                possibleExtensions: [
                    "emf"
                ]
            )
        }

        public static func fits() -> MediaType {
            .init(
                type: name,
                subtype: "fits",
                possibleExtensions: [
                    "fits"
                ]
            )
        }

        public static func g3fax() -> MediaType {
            .init(
                type: name,
                subtype: "g3fax",
                possibleExtensions: [
                    "g3"
                ]
            )
        }

        public static func gif() -> MediaType {
            .init(
                type: name,
                subtype: "gif",
                possibleExtensions: [
                    "gif"
                ]
            )
        }

        public static func heic() -> MediaType {
            .init(
                type: name,
                subtype: "heic",
                possibleExtensions: [
                    "heic"
                ]
            )
        }

        public static func heicSequence() -> MediaType {
            .init(
                type: name,
                subtype: "heic-sequence",
                possibleExtensions: [
                    "heics"
                ]
            )
        }

        public static func heif() -> MediaType {
            .init(
                type: name,
                subtype: "heif",
                possibleExtensions: [
                    "heif"
                ]
            )
        }

        public static func heifSequence() -> MediaType {
            .init(
                type: name,
                subtype: "heif-sequence",
                possibleExtensions: [
                    "heifs"
                ]
            )
        }

        public static func hej2k() -> MediaType {
            .init(
                type: name,
                subtype: "hej2k",
                possibleExtensions: [
                    "hej2"
                ]
            )
        }

        public static func ief() -> MediaType {
            .init(
                type: name,
                subtype: "ief",
                possibleExtensions: [
                    "ief"
                ]
            )
        }

        public static func j2c() -> MediaType {
            .init(
                type: name,
                subtype: "j2c"
            )
        }

        public static func jaii() -> MediaType {
            .init(
                type: name,
                subtype: "jaii",
                possibleExtensions: [
                    "jaii"
                ]
            )
        }

        public static func jais() -> MediaType {
            .init(
                type: name,
                subtype: "jais",
                possibleExtensions: [
                    "jais"
                ]
            )
        }

        public static func jls() -> MediaType {
            .init(
                type: name,
                subtype: "jls",
                possibleExtensions: [
                    "jls"
                ]
            )
        }

        public static func jp2() -> MediaType {
            .init(
                type: name,
                subtype: "jp2",
                possibleExtensions: [
                    "jp2",
                    "jpg2",
                ]
            )
        }

        public static func jpeg() -> MediaType {
            .init(
                type: name,
                subtype: "jpeg",
                possibleExtensions: [
                    "jpg",
                    "jpeg",
                    "jpe",
                ]
            )
        }

        public static func jph() -> MediaType {
            .init(
                type: name,
                subtype: "jph",
                possibleExtensions: [
                    "jph"
                ]
            )
        }

        public static func jphc() -> MediaType {
            .init(
                type: name,
                subtype: "jphc",
                possibleExtensions: [
                    "jhc"
                ]
            )
        }

        public static func jpm() -> MediaType {
            .init(
                type: name,
                subtype: "jpm",
                possibleExtensions: [
                    "jpm",
                    "jpgm",
                ]
            )
        }

        public static func jpx() -> MediaType {
            .init(
                type: name,
                subtype: "jpx",
                possibleExtensions: [
                    "jpx",
                    "jpf",
                ]
            )
        }

        public static func jxl() -> MediaType {
            .init(
                type: name,
                subtype: "jxl",
                possibleExtensions: [
                    "jxl"
                ]
            )
        }

        public static func jxr() -> MediaType {
            .init(
                type: name,
                subtype: "jxr",
                possibleExtensions: [
                    "jxr"
                ]
            )
        }

        public static func jxra() -> MediaType {
            .init(
                type: name,
                subtype: "jxra",
                possibleExtensions: [
                    "jxra"
                ]
            )
        }

        public static func jxrs() -> MediaType {
            .init(
                type: name,
                subtype: "jxrs",
                possibleExtensions: [
                    "jxrs"
                ]
            )
        }

        public static func jxs() -> MediaType {
            .init(
                type: name,
                subtype: "jxs",
                possibleExtensions: [
                    "jxs"
                ]
            )
        }

        public static func jxsc() -> MediaType {
            .init(
                type: name,
                subtype: "jxsc",
                possibleExtensions: [
                    "jxsc"
                ]
            )
        }

        public static func jxsi() -> MediaType {
            .init(
                type: name,
                subtype: "jxsi",
                possibleExtensions: [
                    "jxsi"
                ]
            )
        }

        public static func jxss() -> MediaType {
            .init(
                type: name,
                subtype: "jxss",
                possibleExtensions: [
                    "jxss"
                ]
            )
        }

        public static func ktx() -> MediaType {
            .init(
                type: name,
                subtype: "ktx",
                possibleExtensions: [
                    "ktx"
                ]
            )
        }

        public static func ktx2() -> MediaType {
            .init(
                type: name,
                subtype: "ktx2",
                possibleExtensions: [
                    "ktx2"
                ]
            )
        }

        public static func naplps() -> MediaType {
            .init(
                type: name,
                subtype: "naplps"
            )
        }

        public static func pjpeg() -> MediaType {
            .init(
                type: name,
                subtype: "pjpeg",
                possibleExtensions: [
                    "jfif"
                ]
            )
        }

        public static func png() -> MediaType {
            .init(
                type: name,
                subtype: "png",
                possibleExtensions: [
                    "png"
                ]
            )
        }

        public static func prsBtif() -> MediaType {
            .init(
                type: name,
                subtype: "prs.btif",
                possibleExtensions: [
                    "btif",
                    "btf",
                ]
            )
        }

        public static func prsPti() -> MediaType {
            .init(
                type: name,
                subtype: "prs.pti",
                possibleExtensions: [
                    "pti"
                ]
            )
        }

        public static func pwgRaster() -> MediaType {
            .init(
                type: name,
                subtype: "pwg-raster"
            )
        }

        public static func sgi() -> MediaType {
            .init(
                type: name,
                subtype: "sgi",
                possibleExtensions: [
                    "sgi"
                ]
            )
        }

        public static func svgXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "svg",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "svg",
                    "svgz",
                ]
            )
        }

        public static func t38() -> MediaType {
            .init(
                type: name,
                subtype: "t38",
                possibleExtensions: [
                    "t38"
                ]
            )
        }

        public static func tiff() -> MediaType {
            .init(
                type: name,
                subtype: "tiff",
                possibleExtensions: [
                    "tif",
                    "tiff",
                ]
            )
        }

        public static func tiffFx() -> MediaType {
            .init(
                type: name,
                subtype: "tiff-fx",
                possibleExtensions: [
                    "tfx"
                ]
            )
        }

        public static func vndAdobePhotoshop() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.photoshop",
                possibleExtensions: [
                    "psd"
                ]
            )
        }

        public static func vndAirzipAcceleratorAzv() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.airzip.accelerator.azv",
                possibleExtensions: [
                    "azv"
                ]
            )
        }

        public static func vndBlockfactFacti() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.blockfact.facti",
                possibleExtensions: [
                    "facti"
                ]
            )
        }

        public static func vndClip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.clip"
            )
        }

        public static func vndCnsInf2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cns.inf2"
            )
        }

        public static func vndDeceGraphic() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.graphic",
                possibleExtensions: [
                    "uvi",
                    "uvvi",
                    "uvg",
                    "uvvg",
                ]
            )
        }

        public static func vndDjvu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.djvu",
                possibleExtensions: [
                    "djvu",
                    "djv",
                ]
            )
        }

        public static func vndDvbSubtitle() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.subtitle",
                possibleExtensions: [
                    "sub"
                ]
            )
        }

        public static func vndDwg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dwg",
                possibleExtensions: [
                    "dwg"
                ]
            )
        }

        public static func vndDxf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dxf",
                possibleExtensions: [
                    "dxf"
                ]
            )
        }

        public static func vndFastbidsheet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fastbidsheet",
                possibleExtensions: [
                    "fbs"
                ]
            )
        }

        public static func vndFpx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fpx",
                possibleExtensions: [
                    "fpx"
                ]
            )
        }

        public static func vndFst() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fst",
                possibleExtensions: [
                    "fst"
                ]
            )
        }

        public static func vndFujixeroxEdmicsMmr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.edmics-mmr",
                possibleExtensions: [
                    "mmr"
                ]
            )
        }

        public static func vndFujixeroxEdmicsRlc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.edmics-rlc",
                possibleExtensions: [
                    "rlc"
                ]
            )
        }

        public static func vndGlobalgraphicsPgb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.globalgraphics.pgb"
            )
        }

        public static func vndMicrosoftIcon() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.microsoft.icon",
                possibleExtensions: [
                    "ico"
                ]
            )
        }

        public static func vndMix() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mix"
            )
        }

        public static func vndMozillaApng() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mozilla.apng"
            )
        }

        public static func vndMsDds() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-dds",
                possibleExtensions: [
                    "dds"
                ]
            )
        }

        public static func vndMsModi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-modi",
                possibleExtensions: [
                    "mdi"
                ]
            )
        }

        public static func vndMsPhoto() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-photo",
                possibleExtensions: [
                    "wdp"
                ]
            )
        }

        public static func vndNetFpx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.net-fpx",
                possibleExtensions: [
                    "npx"
                ]
            )
        }

        public static func vndPcoB16() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pco.b16",
                possibleExtensions: [
                    "b16"
                ]
            )
        }

        public static func vndRadiance() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.radiance"
            )
        }

        public static func vndSealedPng() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.png"
            )
        }

        public static func vndSealedmediaSoftsealGif() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.gif"
            )
        }

        public static func vndSealedmediaSoftsealJpg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.jpg"
            )
        }

        public static func vndSvf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.svf"
            )
        }

        public static func vndTencentTap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tencent.tap",
                possibleExtensions: [
                    "tap"
                ]
            )
        }

        public static func vndValveSourceTexture() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.valve.source.texture",
                possibleExtensions: [
                    "vtf"
                ]
            )
        }

        public static func vndWapWbmp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wbmp",
                possibleExtensions: [
                    "wbmp"
                ]
            )
        }

        public static func vndXiff() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xiff",
                possibleExtensions: [
                    "xif"
                ]
            )
        }

        public static func vndZbrushPcx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.zbrush.pcx",
                possibleExtensions: [
                    "pcx"
                ]
            )
        }

        public static func webp() -> MediaType {
            .init(
                type: name,
                subtype: "webp",
                possibleExtensions: [
                    "webp"
                ]
            )
        }

        public static func wmf() -> MediaType {
            .init(
                type: name,
                subtype: "wmf",
                possibleExtensions: [
                    "wmf"
                ]
            )
        }

        public static func x3ds() -> MediaType {
            .init(
                type: name,
                subtype: "x-3ds",
                possibleExtensions: [
                    "3ds"
                ]
            )
        }

        public static func xAdobeDng() -> MediaType {
            .init(
                type: name,
                subtype: "x-adobe-dng",
                possibleExtensions: [
                    "dng"
                ]
            )
        }

        public static func xCmuRaster() -> MediaType {
            .init(
                type: name,
                subtype: "x-cmu-raster",
                possibleExtensions: [
                    "ras"
                ]
            )
        }

        public static func xCmx() -> MediaType {
            .init(
                type: name,
                subtype: "x-cmx",
                possibleExtensions: [
                    "cmx"
                ]
            )
        }

        public static func xEmf() -> MediaType {
            .init(
                type: name,
                subtype: "x-emf"
            )
        }

        public static func xFreehand() -> MediaType {
            .init(
                type: name,
                subtype: "x-freehand",
                possibleExtensions: [
                    "fh",
                    "fhc",
                    "fh4",
                    "fh5",
                    "fh7",
                ]
            )
        }

        public static func xIcon() -> MediaType {
            .init(
                type: name,
                subtype: "x-icon",
                possibleExtensions: [
                    "ico"
                ]
            )
        }

        public static func xJng() -> MediaType {
            .init(
                type: name,
                subtype: "x-jng",
                possibleExtensions: [
                    "jng"
                ]
            )
        }

        public static func xMrsidImage() -> MediaType {
            .init(
                type: name,
                subtype: "x-mrsid-image",
                possibleExtensions: [
                    "sid"
                ]
            )
        }

        public static func xMsBmp() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-bmp",
                possibleExtensions: [
                    "bmp"
                ]
            )
        }

        public static func xPcx() -> MediaType {
            .init(
                type: name,
                subtype: "x-pcx",
                possibleExtensions: [
                    "pcx"
                ]
            )
        }

        public static func xPict() -> MediaType {
            .init(
                type: name,
                subtype: "x-pict",
                possibleExtensions: [
                    "pic",
                    "pct",
                ]
            )
        }

        public static func xPortableAnymap() -> MediaType {
            .init(
                type: name,
                subtype: "x-portable-anymap",
                possibleExtensions: [
                    "pnm"
                ]
            )
        }

        public static func xPortableBitmap() -> MediaType {
            .init(
                type: name,
                subtype: "x-portable-bitmap",
                possibleExtensions: [
                    "pbm"
                ]
            )
        }

        public static func xPortableGraymap() -> MediaType {
            .init(
                type: name,
                subtype: "x-portable-graymap",
                possibleExtensions: [
                    "pgm"
                ]
            )
        }

        public static func xPortablePixmap() -> MediaType {
            .init(
                type: name,
                subtype: "x-portable-pixmap",
                possibleExtensions: [
                    "ppm"
                ]
            )
        }

        public static func xRgb() -> MediaType {
            .init(
                type: name,
                subtype: "x-rgb",
                possibleExtensions: [
                    "rgb"
                ]
            )
        }

        public static func xTga() -> MediaType {
            .init(
                type: name,
                subtype: "x-tga",
                possibleExtensions: [
                    "tga"
                ]
            )
        }

        public static func xWmf() -> MediaType {
            .init(
                type: name,
                subtype: "x-wmf"
            )
        }

        public static func xXbitmap() -> MediaType {
            .init(
                type: name,
                subtype: "x-xbitmap",
                possibleExtensions: [
                    "xbm"
                ]
            )
        }

        public static func xXcf() -> MediaType {
            .init(
                type: name,
                subtype: "x-xcf"
            )
        }

        public static func xXpixmap() -> MediaType {
            .init(
                type: name,
                subtype: "x-xpixmap",
                possibleExtensions: [
                    "xpm"
                ]
            )
        }

        public static func xXwindowdump() -> MediaType {
            .init(
                type: name,
                subtype: "x-xwindowdump",
                possibleExtensions: [
                    "xwd"
                ]
            )
        }

    }

}
