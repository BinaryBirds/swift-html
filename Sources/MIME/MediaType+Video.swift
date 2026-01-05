extension MediaType {

    public enum Video {

        static let name: String = "video"

        public static func _1dInterleavedParityfec() -> MediaType {
            .init(
                type: name,
                subtype: "1d-interleaved-parityfec"
            )
        }

        public static func _3gpp() -> MediaType {
            .init(
                type: name,
                subtype: "3gpp",
                possibleExtensions: [
                    "3gp",
                    "3gpp",
                ]
            )
        }

        public static func _3gppTt() -> MediaType {
            .init(
                type: name,
                subtype: "3gpp-tt"
            )
        }

        public static func _3gpp2() -> MediaType {
            .init(
                type: name,
                subtype: "3gpp2",
                possibleExtensions: [
                    "3g2"
                ]
            )
        }

        public static func av1() -> MediaType {
            .init(
                type: name,
                subtype: "av1"
            )
        }

        public static func bmpeg() -> MediaType {
            .init(
                type: name,
                subtype: "bmpeg"
            )
        }

        public static func bt656() -> MediaType {
            .init(
                type: name,
                subtype: "bt656"
            )
        }

        public static func celb() -> MediaType {
            .init(
                type: name,
                subtype: "celb"
            )
        }

        public static func dv() -> MediaType {
            .init(
                type: name,
                subtype: "dv"
            )
        }

        public static func encaprtp() -> MediaType {
            .init(
                type: name,
                subtype: "encaprtp"
            )
        }

        public static func evc() -> MediaType {
            .init(
                type: name,
                subtype: "evc"
            )
        }

        public static func ffv1() -> MediaType {
            .init(
                type: name,
                subtype: "ffv1"
            )
        }

        public static func flexfec() -> MediaType {
            .init(
                type: name,
                subtype: "flexfec"
            )
        }

        public static func h261() -> MediaType {
            .init(
                type: name,
                subtype: "h261",
                possibleExtensions: [
                    "h261"
                ]
            )
        }

        public static func h263() -> MediaType {
            .init(
                type: name,
                subtype: "h263",
                possibleExtensions: [
                    "h263"
                ]
            )
        }

        public static func h2631998() -> MediaType {
            .init(
                type: name,
                subtype: "h263-1998"
            )
        }

        public static func h2632000() -> MediaType {
            .init(
                type: name,
                subtype: "h263-2000"
            )
        }

        public static func h264() -> MediaType {
            .init(
                type: name,
                subtype: "h264",
                possibleExtensions: [
                    "h264"
                ]
            )
        }

        public static func h264Rcdo() -> MediaType {
            .init(
                type: name,
                subtype: "h264-rcdo"
            )
        }

        public static func h264Svc() -> MediaType {
            .init(
                type: name,
                subtype: "h264-svc"
            )
        }

        public static func h265() -> MediaType {
            .init(
                type: name,
                subtype: "h265"
            )
        }

        public static func h266() -> MediaType {
            .init(
                type: name,
                subtype: "h266"
            )
        }

        public static func isoSegment() -> MediaType {
            .init(
                type: name,
                subtype: "iso.segment",
                possibleExtensions: [
                    "m4s"
                ]
            )
        }

        public static func jpeg() -> MediaType {
            .init(
                type: name,
                subtype: "jpeg",
                possibleExtensions: [
                    "jpgv"
                ]
            )
        }

        public static func jpeg2000() -> MediaType {
            .init(
                type: name,
                subtype: "jpeg2000"
            )
        }

        public static func jpeg2000Scl() -> MediaType {
            .init(
                type: name,
                subtype: "jpeg2000-scl"
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

        public static func jxsv() -> MediaType {
            .init(
                type: name,
                subtype: "jxsv"
            )
        }

        public static func lottieJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "lottie",
                    suffix: "json"
                )
            )
        }

        public static func matroska() -> MediaType {
            .init(
                type: name,
                subtype: "matroska"
            )
        }

        public static func matroska3d() -> MediaType {
            .init(
                type: name,
                subtype: "matroska-3d"
            )
        }

        public static func mj2() -> MediaType {
            .init(
                type: name,
                subtype: "mj2",
                possibleExtensions: [
                    "mj2",
                    "mjp2",
                ]
            )
        }

        public static func mp1s() -> MediaType {
            .init(
                type: name,
                subtype: "mp1s"
            )
        }

        public static func mp2p() -> MediaType {
            .init(
                type: name,
                subtype: "mp2p"
            )
        }

        public static func mp2t() -> MediaType {
            .init(
                type: name,
                subtype: "mp2t",
                possibleExtensions: [
                    "ts",
                    "m2t",
                    "m2ts",
                    "mts",
                ]
            )
        }

        public static func mp4() -> MediaType {
            .init(
                type: name,
                subtype: "mp4",
                possibleExtensions: [
                    "mp4",
                    "mp4v",
                    "mpg4",
                ]
            )
        }

        public static func mp4vEs() -> MediaType {
            .init(
                type: name,
                subtype: "mp4v-es"
            )
        }

        public static func mpeg() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg",
                possibleExtensions: [
                    "mpeg",
                    "mpg",
                    "mpe",
                    "m1v",
                    "m2v",
                ]
            )
        }

        public static func mpeg4Generic() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg4-generic"
            )
        }

        public static func mpv() -> MediaType {
            .init(
                type: name,
                subtype: "mpv"
            )
        }

        public static func nv() -> MediaType {
            .init(
                type: name,
                subtype: "nv"
            )
        }

        public static func ogg() -> MediaType {
            .init(
                type: name,
                subtype: "ogg",
                possibleExtensions: [
                    "ogv"
                ]
            )
        }

        public static func parityfec() -> MediaType {
            .init(
                type: name,
                subtype: "parityfec"
            )
        }

        public static func pointer() -> MediaType {
            .init(
                type: name,
                subtype: "pointer"
            )
        }

        public static func quicktime() -> MediaType {
            .init(
                type: name,
                subtype: "quicktime",
                possibleExtensions: [
                    "qt",
                    "mov",
                ]
            )
        }

        public static func raptorfec() -> MediaType {
            .init(
                type: name,
                subtype: "raptorfec"
            )
        }

        public static func raw() -> MediaType {
            .init(
                type: name,
                subtype: "raw"
            )
        }

        public static func rtpEncAescm128() -> MediaType {
            .init(
                type: name,
                subtype: "rtp-enc-aescm128"
            )
        }

        public static func rtploopback() -> MediaType {
            .init(
                type: name,
                subtype: "rtploopback"
            )
        }

        public static func rtx() -> MediaType {
            .init(
                type: name,
                subtype: "rtx"
            )
        }

        public static func scip() -> MediaType {
            .init(
                type: name,
                subtype: "scip"
            )
        }

        public static func smpte291() -> MediaType {
            .init(
                type: name,
                subtype: "smpte291"
            )
        }

        public static func smpte292m() -> MediaType {
            .init(
                type: name,
                subtype: "smpte292m"
            )
        }

        public static func ulpfec() -> MediaType {
            .init(
                type: name,
                subtype: "ulpfec"
            )
        }

        public static func vc1() -> MediaType {
            .init(
                type: name,
                subtype: "vc1"
            )
        }

        public static func vc2() -> MediaType {
            .init(
                type: name,
                subtype: "vc2"
            )
        }

        public static func vndBlockfactFactv() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.blockfact.factv"
            )
        }

        public static func vndCctv() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cctv"
            )
        }

        public static func vndDeceHd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.hd",
                possibleExtensions: [
                    "uvh",
                    "uvvh",
                ]
            )
        }

        public static func vndDeceMobile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.mobile",
                possibleExtensions: [
                    "uvm",
                    "uvvm",
                ]
            )
        }

        public static func vndDeceMp4() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.mp4"
            )
        }

        public static func vndDecePd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.pd",
                possibleExtensions: [
                    "uvp",
                    "uvvp",
                ]
            )
        }

        public static func vndDeceSd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.sd",
                possibleExtensions: [
                    "uvs",
                    "uvvs",
                ]
            )
        }

        public static func vndDeceVideo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.video",
                possibleExtensions: [
                    "uvv",
                    "uvvv",
                ]
            )
        }

        public static func vndDirectvMpeg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.directv.mpeg"
            )
        }

        public static func vndDirectvMpegTts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.directv.mpeg-tts"
            )
        }

        public static func vndDlnaMpegTts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dlna.mpeg-tts"
            )
        }

        public static func vndDvbFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.file",
                possibleExtensions: [
                    "dvb"
                ]
            )
        }

        public static func vndFvt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fvt",
                possibleExtensions: [
                    "fvt"
                ]
            )
        }

        public static func vndHnsVideo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hns.video"
            )
        }

        public static func vndIptvforum1dparityfec1010() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.1dparityfec-1010"
            )
        }

        public static func vndIptvforum1dparityfec2005() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.1dparityfec-2005"
            )
        }

        public static func vndIptvforum2dparityfec1010() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.2dparityfec-1010"
            )
        }

        public static func vndIptvforum2dparityfec2005() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.2dparityfec-2005"
            )
        }

        public static func vndIptvforumTtsavc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.ttsavc"
            )
        }

        public static func vndIptvforumTtsmpeg2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptvforum.ttsmpeg2"
            )
        }

        public static func vndMotorolaVideo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.video"
            )
        }

        public static func vndMotorolaVideop() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.videop"
            )
        }

        public static func vndMpegurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mpegurl",
                possibleExtensions: [
                    "mxu",
                    "m4u",
                ]
            )
        }

        public static func vndMsPlayreadyMediaPyv() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-playready.media.pyv",
                possibleExtensions: [
                    "pyv"
                ]
            )
        }

        public static func vndNokiaInterleavedMultimedia() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.interleaved-multimedia"
            )
        }

        public static func vndNokiaMp4vr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.mp4vr"
            )
        }

        public static func vndNokiaVideovoip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.videovoip"
            )
        }

        public static func vndObjectvideo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.objectvideo"
            )
        }

        public static func vndPlanar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.planar"
            )
        }

        public static func vndRadgamettoolsBink() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.radgamettools.bink"
            )
        }

        public static func vndRadgamettoolsSmacker() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.radgamettools.smacker"
            )
        }

        public static func vndSealedMpeg1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.mpeg1"
            )
        }

        public static func vndSealedMpeg4() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.mpeg4"
            )
        }

        public static func vndSealedSwf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.swf"
            )
        }

        public static func vndSealedmediaSoftsealMov() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.mov"
            )
        }

        public static func vndUvvuMp4() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uvvu.mp4",
                possibleExtensions: [
                    "uvu",
                    "uvvu",
                ]
            )
        }

        public static func vndVivo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vivo",
                possibleExtensions: [
                    "viv"
                ]
            )
        }

        public static func vndYoutubeYt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.youtube.yt"
            )
        }

        public static func vp8() -> MediaType {
            .init(
                type: name,
                subtype: "vp8"
            )
        }

        public static func vp9() -> MediaType {
            .init(
                type: name,
                subtype: "vp9"
            )
        }

        public static func webm() -> MediaType {
            .init(
                type: name,
                subtype: "webm",
                possibleExtensions: [
                    "webm"
                ]
            )
        }

        public static func xF4v() -> MediaType {
            .init(
                type: name,
                subtype: "x-f4v",
                possibleExtensions: [
                    "f4v"
                ]
            )
        }

        public static func xFli() -> MediaType {
            .init(
                type: name,
                subtype: "x-fli",
                possibleExtensions: [
                    "fli"
                ]
            )
        }

        public static func xFlv() -> MediaType {
            .init(
                type: name,
                subtype: "x-flv",
                possibleExtensions: [
                    "flv"
                ]
            )
        }

        public static func xM4v() -> MediaType {
            .init(
                type: name,
                subtype: "x-m4v",
                possibleExtensions: [
                    "m4v"
                ]
            )
        }

        public static func xMatroska() -> MediaType {
            .init(
                type: name,
                subtype: "x-matroska",
                possibleExtensions: [
                    "mkv",
                    "mk3d",
                    "mks",
                ]
            )
        }

        public static func xMng() -> MediaType {
            .init(
                type: name,
                subtype: "x-mng",
                possibleExtensions: [
                    "mng"
                ]
            )
        }

        public static func xMsAsf() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-asf",
                possibleExtensions: [
                    "asf",
                    "asx",
                ]
            )
        }

        public static func xMsVob() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-vob",
                possibleExtensions: [
                    "vob"
                ]
            )
        }

        public static func xMsWm() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wm",
                possibleExtensions: [
                    "wm"
                ]
            )
        }

        public static func xMsWmv() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wmv",
                possibleExtensions: [
                    "wmv"
                ]
            )
        }

        public static func xMsWmx() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wmx",
                possibleExtensions: [
                    "wmx"
                ]
            )
        }

        public static func xMsWvx() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wvx",
                possibleExtensions: [
                    "wvx"
                ]
            )
        }

        public static func xMsvideo() -> MediaType {
            .init(
                type: name,
                subtype: "x-msvideo",
                possibleExtensions: [
                    "avi"
                ]
            )
        }

        public static func xSgiMovie() -> MediaType {
            .init(
                type: name,
                subtype: "x-sgi-movie",
                possibleExtensions: [
                    "movie"
                ]
            )
        }

        public static func xSmv() -> MediaType {
            .init(
                type: name,
                subtype: "x-smv",
                possibleExtensions: [
                    "smv"
                ]
            )
        }

    }

}
