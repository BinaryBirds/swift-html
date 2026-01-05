extension MediaType {

    public enum Audio {

        static let name: String = "audio"

        public static func _1dInterleavedParityfec() -> MediaType {
            .init(
                type: name,
                subtype: "1d-interleaved-parityfec"
            )
        }

        public static func _32kadpcm() -> MediaType {
            .init(
                type: name,
                subtype: "32kadpcm"
            )
        }

        public static func _3gpp() -> MediaType {
            .init(
                type: name,
                subtype: "3gpp",
                possibleExtensions: [
                    "3gpp"
                ]
            )
        }

        public static func _3gpp2() -> MediaType {
            .init(
                type: name,
                subtype: "3gpp2"
            )
        }

        public static func aac() -> MediaType {
            .init(
                type: name,
                subtype: "aac",
                possibleExtensions: [
                    "adts",
                    "aac",
                ]
            )
        }

        public static func ac3() -> MediaType {
            .init(
                type: name,
                subtype: "ac3"
            )
        }

        public static func adpcm() -> MediaType {
            .init(
                type: name,
                subtype: "adpcm",
                possibleExtensions: [
                    "adp"
                ]
            )
        }

        public static func amr() -> MediaType {
            .init(
                type: name,
                subtype: "amr",
                possibleExtensions: [
                    "amr"
                ]
            )
        }

        public static func amrWb() -> MediaType {
            .init(
                type: name,
                subtype: "amr-wb"
            )
        }

        public static func amrWbPlus() -> MediaType {
            .init(
                type: name,
                subtype: "amr-wb+"
            )
        }

        public static func aptx() -> MediaType {
            .init(
                type: name,
                subtype: "aptx"
            )
        }

        public static func asc() -> MediaType {
            .init(
                type: name,
                subtype: "asc"
            )
        }

        public static func atracAdvancedLossless() -> MediaType {
            .init(
                type: name,
                subtype: "atrac-advanced-lossless"
            )
        }

        public static func atracX() -> MediaType {
            .init(
                type: name,
                subtype: "atrac-x"
            )
        }

        public static func atrac3() -> MediaType {
            .init(
                type: name,
                subtype: "atrac3"
            )
        }

        public static func basic() -> MediaType {
            .init(
                type: name,
                subtype: "basic",
                possibleExtensions: [
                    "au",
                    "snd",
                ]
            )
        }

        public static func bv16() -> MediaType {
            .init(
                type: name,
                subtype: "bv16"
            )
        }

        public static func bv32() -> MediaType {
            .init(
                type: name,
                subtype: "bv32"
            )
        }

        public static func clearmode() -> MediaType {
            .init(
                type: name,
                subtype: "clearmode"
            )
        }

        public static func cn() -> MediaType {
            .init(
                type: name,
                subtype: "cn"
            )
        }

        public static func dat12() -> MediaType {
            .init(
                type: name,
                subtype: "dat12"
            )
        }

        public static func dls() -> MediaType {
            .init(
                type: name,
                subtype: "dls"
            )
        }

        public static func dsrEs201108() -> MediaType {
            .init(
                type: name,
                subtype: "dsr-es201108"
            )
        }

        public static func dsrEs202050() -> MediaType {
            .init(
                type: name,
                subtype: "dsr-es202050"
            )
        }

        public static func dsrEs202211() -> MediaType {
            .init(
                type: name,
                subtype: "dsr-es202211"
            )
        }

        public static func dsrEs202212() -> MediaType {
            .init(
                type: name,
                subtype: "dsr-es202212"
            )
        }

        public static func dv() -> MediaType {
            .init(
                type: name,
                subtype: "dv"
            )
        }

        public static func dvi4() -> MediaType {
            .init(
                type: name,
                subtype: "dvi4"
            )
        }

        public static func eac3() -> MediaType {
            .init(
                type: name,
                subtype: "eac3"
            )
        }

        public static func encaprtp() -> MediaType {
            .init(
                type: name,
                subtype: "encaprtp"
            )
        }

        public static func evrc() -> MediaType {
            .init(
                type: name,
                subtype: "evrc"
            )
        }

        public static func evrcQcp() -> MediaType {
            .init(
                type: name,
                subtype: "evrc-qcp"
            )
        }

        public static func evrc0() -> MediaType {
            .init(
                type: name,
                subtype: "evrc0"
            )
        }

        public static func evrc1() -> MediaType {
            .init(
                type: name,
                subtype: "evrc1"
            )
        }

        public static func evrcb() -> MediaType {
            .init(
                type: name,
                subtype: "evrcb"
            )
        }

        public static func evrcb0() -> MediaType {
            .init(
                type: name,
                subtype: "evrcb0"
            )
        }

        public static func evrcb1() -> MediaType {
            .init(
                type: name,
                subtype: "evrcb1"
            )
        }

        public static func evrcnw() -> MediaType {
            .init(
                type: name,
                subtype: "evrcnw"
            )
        }

        public static func evrcnw0() -> MediaType {
            .init(
                type: name,
                subtype: "evrcnw0"
            )
        }

        public static func evrcnw1() -> MediaType {
            .init(
                type: name,
                subtype: "evrcnw1"
            )
        }

        public static func evrcwb() -> MediaType {
            .init(
                type: name,
                subtype: "evrcwb"
            )
        }

        public static func evrcwb0() -> MediaType {
            .init(
                type: name,
                subtype: "evrcwb0"
            )
        }

        public static func evrcwb1() -> MediaType {
            .init(
                type: name,
                subtype: "evrcwb1"
            )
        }

        public static func evs() -> MediaType {
            .init(
                type: name,
                subtype: "evs"
            )
        }

        public static func flac() -> MediaType {
            .init(
                type: name,
                subtype: "flac"
            )
        }

        public static func flexfec() -> MediaType {
            .init(
                type: name,
                subtype: "flexfec"
            )
        }

        public static func fwdred() -> MediaType {
            .init(
                type: name,
                subtype: "fwdred"
            )
        }

        public static func g7110() -> MediaType {
            .init(
                type: name,
                subtype: "g711-0"
            )
        }

        public static func g719() -> MediaType {
            .init(
                type: name,
                subtype: "g719"
            )
        }

        public static func g722() -> MediaType {
            .init(
                type: name,
                subtype: "g722"
            )
        }

        public static func g7221() -> MediaType {
            .init(
                type: name,
                subtype: "g7221"
            )
        }

        public static func g723() -> MediaType {
            .init(
                type: name,
                subtype: "g723"
            )
        }

        public static func g72616() -> MediaType {
            .init(
                type: name,
                subtype: "g726-16"
            )
        }

        public static func g72624() -> MediaType {
            .init(
                type: name,
                subtype: "g726-24"
            )
        }

        public static func g72632() -> MediaType {
            .init(
                type: name,
                subtype: "g726-32"
            )
        }

        public static func g72640() -> MediaType {
            .init(
                type: name,
                subtype: "g726-40"
            )
        }

        public static func g728() -> MediaType {
            .init(
                type: name,
                subtype: "g728"
            )
        }

        public static func g729() -> MediaType {
            .init(
                type: name,
                subtype: "g729"
            )
        }

        public static func g7291() -> MediaType {
            .init(
                type: name,
                subtype: "g7291"
            )
        }

        public static func g729d() -> MediaType {
            .init(
                type: name,
                subtype: "g729d"
            )
        }

        public static func g729e() -> MediaType {
            .init(
                type: name,
                subtype: "g729e"
            )
        }

        public static func gsm() -> MediaType {
            .init(
                type: name,
                subtype: "gsm"
            )
        }

        public static func gsmEfr() -> MediaType {
            .init(
                type: name,
                subtype: "gsm-efr"
            )
        }

        public static func gsmHr08() -> MediaType {
            .init(
                type: name,
                subtype: "gsm-hr-08"
            )
        }

        public static func ilbc() -> MediaType {
            .init(
                type: name,
                subtype: "ilbc"
            )
        }

        public static func ipMrV25() -> MediaType {
            .init(
                type: name,
                subtype: "ip-mr_v2.5"
            )
        }

        public static func isac() -> MediaType {
            .init(
                type: name,
                subtype: "isac"
            )
        }

        public static func l16() -> MediaType {
            .init(
                type: name,
                subtype: "l16"
            )
        }

        public static func l20() -> MediaType {
            .init(
                type: name,
                subtype: "l20"
            )
        }

        public static func l24() -> MediaType {
            .init(
                type: name,
                subtype: "l24"
            )
        }

        public static func l8() -> MediaType {
            .init(
                type: name,
                subtype: "l8"
            )
        }

        public static func lpc() -> MediaType {
            .init(
                type: name,
                subtype: "lpc"
            )
        }

        public static func matroska() -> MediaType {
            .init(
                type: name,
                subtype: "matroska"
            )
        }

        public static func melp() -> MediaType {
            .init(
                type: name,
                subtype: "melp"
            )
        }

        public static func melp1200() -> MediaType {
            .init(
                type: name,
                subtype: "melp1200"
            )
        }

        public static func melp2400() -> MediaType {
            .init(
                type: name,
                subtype: "melp2400"
            )
        }

        public static func melp600() -> MediaType {
            .init(
                type: name,
                subtype: "melp600"
            )
        }

        public static func mhas() -> MediaType {
            .init(
                type: name,
                subtype: "mhas"
            )
        }

        public static func midi() -> MediaType {
            .init(
                type: name,
                subtype: "midi",
                possibleExtensions: [
                    "mid",
                    "midi",
                    "kar",
                    "rmi",
                ]
            )
        }

        public static func midiClip() -> MediaType {
            .init(
                type: name,
                subtype: "midi-clip"
            )
        }

        public static func mobileXmf() -> MediaType {
            .init(
                type: name,
                subtype: "mobile-xmf",
                possibleExtensions: [
                    "mxmf"
                ]
            )
        }

        public static func mp3() -> MediaType {
            .init(
                type: name,
                subtype: "mp3",
                possibleExtensions: [
                    "mp3"
                ]
            )
        }

        public static func mp4() -> MediaType {
            .init(
                type: name,
                subtype: "mp4",
                possibleExtensions: [
                    "m4a",
                    "mp4a",
                    "m4b",
                ]
            )
        }

        public static func mp4aLatm() -> MediaType {
            .init(
                type: name,
                subtype: "mp4a-latm"
            )
        }

        public static func mpa() -> MediaType {
            .init(
                type: name,
                subtype: "mpa"
            )
        }

        public static func mpaRobust() -> MediaType {
            .init(
                type: name,
                subtype: "mpa-robust"
            )
        }

        public static func mpeg() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg",
                possibleExtensions: [
                    "mpga",
                    "mp2",
                    "mp2a",
                    "mp3",
                    "m2a",
                    "m3a",
                ]
            )
        }

        public static func mpeg4Generic() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg4-generic"
            )
        }

        public static func musepack() -> MediaType {
            .init(
                type: name,
                subtype: "musepack"
            )
        }

        public static func ogg() -> MediaType {
            .init(
                type: name,
                subtype: "ogg",
                possibleExtensions: [
                    "oga",
                    "ogg",
                    "spx",
                    "opus",
                ]
            )
        }

        public static func opus() -> MediaType {
            .init(
                type: name,
                subtype: "opus"
            )
        }

        public static func parityfec() -> MediaType {
            .init(
                type: name,
                subtype: "parityfec"
            )
        }

        public static func pcma() -> MediaType {
            .init(
                type: name,
                subtype: "pcma"
            )
        }

        public static func pcmaWb() -> MediaType {
            .init(
                type: name,
                subtype: "pcma-wb"
            )
        }

        public static func pcmu() -> MediaType {
            .init(
                type: name,
                subtype: "pcmu"
            )
        }

        public static func pcmuWb() -> MediaType {
            .init(
                type: name,
                subtype: "pcmu-wb"
            )
        }

        public static func prsSid() -> MediaType {
            .init(
                type: name,
                subtype: "prs.sid"
            )
        }

        public static func qcelp() -> MediaType {
            .init(
                type: name,
                subtype: "qcelp"
            )
        }

        public static func raptorfec() -> MediaType {
            .init(
                type: name,
                subtype: "raptorfec"
            )
        }

        public static func red() -> MediaType {
            .init(
                type: name,
                subtype: "red"
            )
        }

        public static func rtpEncAescm128() -> MediaType {
            .init(
                type: name,
                subtype: "rtp-enc-aescm128"
            )
        }

        public static func rtpMidi() -> MediaType {
            .init(
                type: name,
                subtype: "rtp-midi"
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

        public static func s3m() -> MediaType {
            .init(
                type: name,
                subtype: "s3m",
                possibleExtensions: [
                    "s3m"
                ]
            )
        }

        public static func scip() -> MediaType {
            .init(
                type: name,
                subtype: "scip"
            )
        }

        public static func silk() -> MediaType {
            .init(
                type: name,
                subtype: "silk",
                possibleExtensions: [
                    "sil"
                ]
            )
        }

        public static func smv() -> MediaType {
            .init(
                type: name,
                subtype: "smv"
            )
        }

        public static func smvQcp() -> MediaType {
            .init(
                type: name,
                subtype: "smv-qcp"
            )
        }

        public static func smv0() -> MediaType {
            .init(
                type: name,
                subtype: "smv0"
            )
        }

        public static func sofa() -> MediaType {
            .init(
                type: name,
                subtype: "sofa"
            )
        }

        public static func spMidi() -> MediaType {
            .init(
                type: name,
                subtype: "sp-midi"
            )
        }

        public static func speex() -> MediaType {
            .init(
                type: name,
                subtype: "speex"
            )
        }

        public static func t140c() -> MediaType {
            .init(
                type: name,
                subtype: "t140c"
            )
        }

        public static func t38() -> MediaType {
            .init(
                type: name,
                subtype: "t38"
            )
        }

        public static func telephoneEvent() -> MediaType {
            .init(
                type: name,
                subtype: "telephone-event"
            )
        }

        public static func tetraAcelp() -> MediaType {
            .init(
                type: name,
                subtype: "tetra_acelp"
            )
        }

        public static func tetraAcelpBb() -> MediaType {
            .init(
                type: name,
                subtype: "tetra_acelp_bb"
            )
        }

        public static func tone() -> MediaType {
            .init(
                type: name,
                subtype: "tone"
            )
        }

        public static func tsvcis() -> MediaType {
            .init(
                type: name,
                subtype: "tsvcis"
            )
        }

        public static func uemclip() -> MediaType {
            .init(
                type: name,
                subtype: "uemclip"
            )
        }

        public static func ulpfec() -> MediaType {
            .init(
                type: name,
                subtype: "ulpfec"
            )
        }

        public static func usac() -> MediaType {
            .init(
                type: name,
                subtype: "usac"
            )
        }

        public static func vdvi() -> MediaType {
            .init(
                type: name,
                subtype: "vdvi"
            )
        }

        public static func vmrWb() -> MediaType {
            .init(
                type: name,
                subtype: "vmr-wb"
            )
        }

        public static func vnd3gppIufp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.iufp"
            )
        }

        public static func vnd4sb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.4sb"
            )
        }

        public static func vndAudiokoz() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.audiokoz"
            )
        }

        public static func vndBlockfactFacta() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.blockfact.facta"
            )
        }

        public static func vndCelp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.celp"
            )
        }

        public static func vndCiscoNse() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cisco.nse"
            )
        }

        public static func vndCmlesRadioEvents() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cmles.radio-events"
            )
        }

        public static func vndCnsAnp1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cns.anp1"
            )
        }

        public static func vndCnsInf1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cns.inf1"
            )
        }

        public static func vndDeceAudio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.audio",
                possibleExtensions: [
                    "uva",
                    "uvva",
                ]
            )
        }

        public static func vndDigitalWinds() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.digital-winds",
                possibleExtensions: [
                    "eol"
                ]
            )
        }

        public static func vndDlnaAdts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dlna.adts"
            )
        }

        public static func vndDolbyHeaac1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.heaac.1"
            )
        }

        public static func vndDolbyHeaac2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.heaac.2"
            )
        }

        public static func vndDolbyMlp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.mlp"
            )
        }

        public static func vndDolbyMps() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.mps"
            )
        }

        public static func vndDolbyPl2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.pl2"
            )
        }

        public static func vndDolbyPl2x() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.pl2x"
            )
        }

        public static func vndDolbyPl2z() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.pl2z"
            )
        }

        public static func vndDolbyPulse1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.pulse.1"
            )
        }

        public static func vndDra() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dra",
                possibleExtensions: [
                    "dra"
                ]
            )
        }

        public static func vndDts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dts",
                possibleExtensions: [
                    "dts"
                ]
            )
        }

        public static func vndDtsHd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dts.hd",
                possibleExtensions: [
                    "dtshd"
                ]
            )
        }

        public static func vndDtsUhd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dts.uhd"
            )
        }

        public static func vndDvbFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.file"
            )
        }

        public static func vndEveradPlj() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.everad.plj"
            )
        }

        public static func vndHnsAudio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hns.audio"
            )
        }

        public static func vndLucentVoice() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lucent.voice",
                possibleExtensions: [
                    "lvp"
                ]
            )
        }

        public static func vndMsPlayreadyMediaPya() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-playready.media.pya",
                possibleExtensions: [
                    "pya"
                ]
            )
        }

        public static func vndNokiaMobileXmf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.mobile-xmf"
            )
        }

        public static func vndNortelVbk() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nortel.vbk"
            )
        }

        public static func vndNueraEcelp4800() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nuera.ecelp4800",
                possibleExtensions: [
                    "ecelp4800"
                ]
            )
        }

        public static func vndNueraEcelp7470() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nuera.ecelp7470",
                possibleExtensions: [
                    "ecelp7470"
                ]
            )
        }

        public static func vndNueraEcelp9600() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nuera.ecelp9600",
                possibleExtensions: [
                    "ecelp9600"
                ]
            )
        }

        public static func vndOctelSbc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.octel.sbc"
            )
        }

        public static func vndPresonusMultitrack() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.presonus.multitrack"
            )
        }

        public static func vndQcelp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.qcelp"
            )
        }

        public static func vndRhetorex32kadpcm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rhetorex.32kadpcm"
            )
        }

        public static func vndRip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rip",
                possibleExtensions: [
                    "rip"
                ]
            )
        }

        public static func vndRnRealaudio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rn-realaudio"
            )
        }

        public static func vndSealedmediaSoftsealMpeg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.mpeg"
            )
        }

        public static func vndVmxCvsd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vmx.cvsd"
            )
        }

        public static func vndWave() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wave"
            )
        }

        public static func vorbis() -> MediaType {
            .init(
                type: name,
                subtype: "vorbis"
            )
        }

        public static func vorbisConfig() -> MediaType {
            .init(
                type: name,
                subtype: "vorbis-config"
            )
        }

        public static func wav() -> MediaType {
            .init(
                type: name,
                subtype: "wav",
                possibleExtensions: [
                    "wav"
                ]
            )
        }

        public static func wave() -> MediaType {
            .init(
                type: name,
                subtype: "wave",
                possibleExtensions: [
                    "wav"
                ]
            )
        }

        public static func webm() -> MediaType {
            .init(
                type: name,
                subtype: "webm",
                possibleExtensions: [
                    "weba"
                ]
            )
        }

        public static func xAac() -> MediaType {
            .init(
                type: name,
                subtype: "x-aac",
                possibleExtensions: [
                    "aac"
                ]
            )
        }

        public static func xAiff() -> MediaType {
            .init(
                type: name,
                subtype: "x-aiff",
                possibleExtensions: [
                    "aif",
                    "aiff",
                    "aifc",
                ]
            )
        }

        public static func xCaf() -> MediaType {
            .init(
                type: name,
                subtype: "x-caf",
                possibleExtensions: [
                    "caf"
                ]
            )
        }

        public static func xFlac() -> MediaType {
            .init(
                type: name,
                subtype: "x-flac",
                possibleExtensions: [
                    "flac"
                ]
            )
        }

        public static func xM4a() -> MediaType {
            .init(
                type: name,
                subtype: "x-m4a",
                possibleExtensions: [
                    "m4a"
                ]
            )
        }

        public static func xMatroska() -> MediaType {
            .init(
                type: name,
                subtype: "x-matroska",
                possibleExtensions: [
                    "mka"
                ]
            )
        }

        public static func xMpegurl() -> MediaType {
            .init(
                type: name,
                subtype: "x-mpegurl",
                possibleExtensions: [
                    "m3u"
                ]
            )
        }

        public static func xMsWax() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wax",
                possibleExtensions: [
                    "wax"
                ]
            )
        }

        public static func xMsWma() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wma",
                possibleExtensions: [
                    "wma"
                ]
            )
        }

        public static func xPnRealaudio() -> MediaType {
            .init(
                type: name,
                subtype: "x-pn-realaudio",
                possibleExtensions: [
                    "ram",
                    "ra",
                ]
            )
        }

        public static func xPnRealaudioPlugin() -> MediaType {
            .init(
                type: name,
                subtype: "x-pn-realaudio-plugin",
                possibleExtensions: [
                    "rmp"
                ]
            )
        }

        public static func xRealaudio() -> MediaType {
            .init(
                type: name,
                subtype: "x-realaudio",
                possibleExtensions: [
                    "ra"
                ]
            )
        }

        public static func xTta() -> MediaType {
            .init(
                type: name,
                subtype: "x-tta"
            )
        }

        public static func xWav() -> MediaType {
            .init(
                type: name,
                subtype: "x-wav",
                possibleExtensions: [
                    "wav"
                ]
            )
        }

        public static func xm() -> MediaType {
            .init(
                type: name,
                subtype: "xm",
                possibleExtensions: [
                    "xm"
                ]
            )
        }

    }

}
