extension MediaType {

    public enum Text {

        static let name: String = "text"

        public static func _1dInterleavedParityfec() -> MediaType {
            .init(
                type: name,
                subtype: "1d-interleaved-parityfec"
            )
        }

        public static func cacheManifest() -> MediaType {
            .init(
                type: name,
                subtype: "cache-manifest",
                possibleExtensions: [
                    "appcache",
                    "manifest",
                ]
            )
        }

        public static func calendar() -> MediaType {
            .init(
                type: name,
                subtype: "calendar",
                possibleExtensions: [
                    "ics",
                    "ifb",
                ]
            )
        }

        public static func cmd() -> MediaType {
            .init(
                type: name,
                subtype: "cmd"
            )
        }

        public static func coffeescript() -> MediaType {
            .init(
                type: name,
                subtype: "coffeescript",
                possibleExtensions: [
                    "coffee",
                    "litcoffee",
                ]
            )
        }

        public static func cql() -> MediaType {
            .init(
                type: name,
                subtype: "cql"
            )
        }

        public static func cqlExpression() -> MediaType {
            .init(
                type: name,
                subtype: "cql-expression"
            )
        }

        public static func cqlIdentifier() -> MediaType {
            .init(
                type: name,
                subtype: "cql-identifier"
            )
        }

        public static func css() -> MediaType {
            .init(
                type: name,
                subtype: "css",
                possibleExtensions: [
                    "css"
                ]
            )
        }

        public static func csv() -> MediaType {
            .init(
                type: name,
                subtype: "csv",
                possibleExtensions: [
                    "csv"
                ]
            )
        }

        public static func csvSchema() -> MediaType {
            .init(
                type: name,
                subtype: "csv-schema"
            )
        }

        public static func directory() -> MediaType {
            .init(
                type: name,
                subtype: "directory"
            )
        }

        public static func dns() -> MediaType {
            .init(
                type: name,
                subtype: "dns"
            )
        }

        public static func ecmascript() -> MediaType {
            .init(
                type: name,
                subtype: "ecmascript"
            )
        }

        public static func encaprtp() -> MediaType {
            .init(
                type: name,
                subtype: "encaprtp"
            )
        }

        public static func enriched() -> MediaType {
            .init(
                type: name,
                subtype: "enriched"
            )
        }

        public static func fhirpath() -> MediaType {
            .init(
                type: name,
                subtype: "fhirpath"
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

        public static func gff3() -> MediaType {
            .init(
                type: name,
                subtype: "gff3"
            )
        }

        public static func grammarRefList() -> MediaType {
            .init(
                type: name,
                subtype: "grammar-ref-list"
            )
        }

        public static func hl7v2() -> MediaType {
            .init(
                type: name,
                subtype: "hl7v2"
            )
        }

        public static func html() -> MediaType {
            .init(
                type: name,
                subtype: "html",
                possibleExtensions: [
                    "html",
                    "htm",
                    "shtml",
                ]
            )
        }

        public static func jade() -> MediaType {
            .init(
                type: name,
                subtype: "jade",
                possibleExtensions: [
                    "jade"
                ]
            )
        }

        public static func javascript() -> MediaType {
            .init(
                type: name,
                subtype: "javascript",
                possibleExtensions: [
                    "js",
                    "mjs",
                ]
            )
        }

        public static func jcrCnd() -> MediaType {
            .init(
                type: name,
                subtype: "jcr-cnd"
            )
        }

        public static func jsx() -> MediaType {
            .init(
                type: name,
                subtype: "jsx",
                possibleExtensions: [
                    "jsx"
                ]
            )
        }

        public static func less() -> MediaType {
            .init(
                type: name,
                subtype: "less",
                possibleExtensions: [
                    "less"
                ]
            )
        }

        public static func markdown() -> MediaType {
            .init(
                type: name,
                subtype: "markdown",
                possibleExtensions: [
                    "md",
                    "markdown",
                ]
            )
        }

        public static func mathml() -> MediaType {
            .init(
                type: name,
                subtype: "mathml",
                possibleExtensions: [
                    "mml"
                ]
            )
        }

        public static func mdx() -> MediaType {
            .init(
                type: name,
                subtype: "mdx",
                possibleExtensions: [
                    "mdx"
                ]
            )
        }

        public static func mizar() -> MediaType {
            .init(
                type: name,
                subtype: "mizar"
            )
        }

        public static func n3() -> MediaType {
            .init(
                type: name,
                subtype: "n3",
                possibleExtensions: [
                    "n3"
                ]
            )
        }

        public static func org() -> MediaType {
            .init(
                type: name,
                subtype: "org"
            )
        }

        public static func parameters() -> MediaType {
            .init(
                type: name,
                subtype: "parameters"
            )
        }

        public static func parityfec() -> MediaType {
            .init(
                type: name,
                subtype: "parityfec"
            )
        }

        public static func plain() -> MediaType {
            .init(
                type: name,
                subtype: "plain",
                possibleExtensions: [
                    "txt",
                    "text",
                    "conf",
                    "def",
                    "list",
                    "log",
                    "in",
                    "ini",
                ]
            )
        }

        public static func provenanceNotation() -> MediaType {
            .init(
                type: name,
                subtype: "provenance-notation"
            )
        }

        public static func prsFallensteinRst() -> MediaType {
            .init(
                type: name,
                subtype: "prs.fallenstein.rst"
            )
        }

        public static func prsLinesTag() -> MediaType {
            .init(
                type: name,
                subtype: "prs.lines.tag",
                possibleExtensions: [
                    "dsc"
                ]
            )
        }

        public static func prsPropLogic() -> MediaType {
            .init(
                type: name,
                subtype: "prs.prop.logic"
            )
        }

        public static func prsTexi() -> MediaType {
            .init(
                type: name,
                subtype: "prs.texi"
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

        public static func rfc822Headers() -> MediaType {
            .init(
                type: name,
                subtype: "rfc822-headers"
            )
        }

        public static func richtext() -> MediaType {
            .init(
                type: name,
                subtype: "richtext",
                possibleExtensions: [
                    "rtx"
                ]
            )
        }

        public static func rtf() -> MediaType {
            .init(
                type: name,
                subtype: "rtf",
                possibleExtensions: [
                    "rtf"
                ]
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

        public static func sgml() -> MediaType {
            .init(
                type: name,
                subtype: "sgml",
                possibleExtensions: [
                    "sgml",
                    "sgm",
                ]
            )
        }

        public static func shaclc() -> MediaType {
            .init(
                type: name,
                subtype: "shaclc"
            )
        }

        public static func shex() -> MediaType {
            .init(
                type: name,
                subtype: "shex",
                possibleExtensions: [
                    "shex"
                ]
            )
        }

        public static func slim() -> MediaType {
            .init(
                type: name,
                subtype: "slim",
                possibleExtensions: [
                    "slim",
                    "slm",
                ]
            )
        }

        public static func spdx() -> MediaType {
            .init(
                type: name,
                subtype: "spdx",
                possibleExtensions: [
                    "spdx"
                ]
            )
        }

        public static func strings() -> MediaType {
            .init(
                type: name,
                subtype: "strings"
            )
        }

        public static func stylus() -> MediaType {
            .init(
                type: name,
                subtype: "stylus",
                possibleExtensions: [
                    "stylus",
                    "styl",
                ]
            )
        }

        public static func t140() -> MediaType {
            .init(
                type: name,
                subtype: "t140"
            )
        }

        public static func tabSeparatedValues() -> MediaType {
            .init(
                type: name,
                subtype: "tab-separated-values",
                possibleExtensions: [
                    "tsv"
                ]
            )
        }

        public static func troff() -> MediaType {
            .init(
                type: name,
                subtype: "troff",
                possibleExtensions: [
                    "t",
                    "tr",
                    "roff",
                    "man",
                    "me",
                    "ms",
                ]
            )
        }

        public static func turtle() -> MediaType {
            .init(
                type: name,
                subtype: "turtle",
                possibleExtensions: [
                    "ttl"
                ]
            )
        }

        public static func ulpfec() -> MediaType {
            .init(
                type: name,
                subtype: "ulpfec"
            )
        }

        public static func uriList() -> MediaType {
            .init(
                type: name,
                subtype: "uri-list",
                possibleExtensions: [
                    "uri",
                    "uris",
                    "urls",
                ]
            )
        }

        public static func vcard() -> MediaType {
            .init(
                type: name,
                subtype: "vcard",
                possibleExtensions: [
                    "vcard"
                ]
            )
        }

        public static func vndA() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.a"
            )
        }

        public static func vndAbc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.abc"
            )
        }

        public static func vndAsciiArt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ascii-art"
            )
        }

        public static func vndCurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl",
                possibleExtensions: [
                    "curl"
                ]
            )
        }

        public static func vndCurlDcurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl.dcurl",
                possibleExtensions: [
                    "dcurl"
                ]
            )
        }

        public static func vndCurlMcurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl.mcurl",
                possibleExtensions: [
                    "mcurl"
                ]
            )
        }

        public static func vndCurlScurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl.scurl",
                possibleExtensions: [
                    "scurl"
                ]
            )
        }

        public static func vndDebianCopyright() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.debian.copyright"
            )
        }

        public static func vndDmclientscript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dmclientscript"
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

        public static func vndEsmertecThemeDescriptor() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.esmertec.theme-descriptor"
            )
        }

        public static func vndExchangeable() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.exchangeable"
            )
        }

        public static func vndFamilysearchGedcom() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.familysearch.gedcom",
                possibleExtensions: [
                    "ged"
                ]
            )
        }

        public static func vndFiclabFlt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ficlab.flt"
            )
        }

        public static func vndFly() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fly",
                possibleExtensions: [
                    "fly"
                ]
            )
        }

        public static func vndFmiFlexstor() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fmi.flexstor",
                possibleExtensions: [
                    "flx"
                ]
            )
        }

        public static func vndGml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gml"
            )
        }

        public static func vndGraphviz() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.graphviz",
                possibleExtensions: [
                    "gv"
                ]
            )
        }

        public static func vndHans() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hans"
            )
        }

        public static func vndHgl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hgl"
            )
        }

        public static func vndIn3d3dml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.in3d.3dml",
                possibleExtensions: [
                    "3dml"
                ]
            )
        }

        public static func vndIn3dSpot() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.in3d.spot",
                possibleExtensions: [
                    "spot"
                ]
            )
        }

        public static func vndIptcNewsml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptc.newsml"
            )
        }

        public static func vndIptcNitf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iptc.nitf"
            )
        }

        public static func vndLatexZ() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.latex-z"
            )
        }

        public static func vndMotorolaReflex() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.reflex"
            )
        }

        public static func vndMsMediapackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-mediapackage"
            )
        }

        public static func vndNet2phoneCommcenterCommand() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.net2phone.commcenter.command"
            )
        }

        public static func vndRadisysMsmlBasicLayout() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.radisys.msml-basic-layout"
            )
        }

        public static func vndSenxWarpscript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.senx.warpscript"
            )
        }

        public static func vndSiUricatalogue() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.si.uricatalogue"
            )
        }

        public static func vndSosi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sosi"
            )
        }

        public static func vndSunJ2meAppDescriptor() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.j2me.app-descriptor",
                possibleExtensions: [
                    "jad"
                ]
            )
        }

        public static func vndTrolltechLinguist() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.trolltech.linguist"
            )
        }

        public static func vndTypst() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.typst"
            )
        }

        public static func vndVcf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vcf"
            )
        }

        public static func vndWapSi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.si"
            )
        }

        public static func vndWapSl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.sl"
            )
        }

        public static func vndWapWml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wml",
                possibleExtensions: [
                    "wml"
                ]
            )
        }

        public static func vndWapWmlscript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wmlscript",
                possibleExtensions: [
                    "wmls"
                ]
            )
        }

        public static func vndZooKcl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.zoo.kcl"
            )
        }

        public static func vtt() -> MediaType {
            .init(
                type: name,
                subtype: "vtt",
                possibleExtensions: [
                    "vtt"
                ]
            )
        }

        public static func wgsl() -> MediaType {
            .init(
                type: name,
                subtype: "wgsl",
                possibleExtensions: [
                    "wgsl"
                ]
            )
        }

        public static func xAsm() -> MediaType {
            .init(
                type: name,
                subtype: "x-asm",
                possibleExtensions: [
                    "s",
                    "asm",
                ]
            )
        }

        public static func xC() -> MediaType {
            .init(
                type: name,
                subtype: "x-c",
                possibleExtensions: [
                    "c",
                    "cc",
                    "cxx",
                    "cpp",
                    "h",
                    "hh",
                    "dic",
                ]
            )
        }

        public static func xComponent() -> MediaType {
            .init(
                type: name,
                subtype: "x-component",
                possibleExtensions: [
                    "htc"
                ]
            )
        }

        public static func xFortran() -> MediaType {
            .init(
                type: name,
                subtype: "x-fortran",
                possibleExtensions: [
                    "f",
                    "for",
                    "f77",
                    "f90",
                ]
            )
        }

        public static func xGwtRpc() -> MediaType {
            .init(
                type: name,
                subtype: "x-gwt-rpc"
            )
        }

        public static func xHandlebarsTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "x-handlebars-template",
                possibleExtensions: [
                    "hbs"
                ]
            )
        }

        public static func xJavaSource() -> MediaType {
            .init(
                type: name,
                subtype: "x-java-source",
                possibleExtensions: [
                    "java"
                ]
            )
        }

        public static func xJqueryTmpl() -> MediaType {
            .init(
                type: name,
                subtype: "x-jquery-tmpl"
            )
        }

        public static func xLua() -> MediaType {
            .init(
                type: name,
                subtype: "x-lua",
                possibleExtensions: [
                    "lua"
                ]
            )
        }

        public static func xMarkdown() -> MediaType {
            .init(
                type: name,
                subtype: "x-markdown",
                possibleExtensions: [
                    "mkd"
                ]
            )
        }

        public static func xNfo() -> MediaType {
            .init(
                type: name,
                subtype: "x-nfo",
                possibleExtensions: [
                    "nfo"
                ]
            )
        }

        public static func xOpml() -> MediaType {
            .init(
                type: name,
                subtype: "x-opml",
                possibleExtensions: [
                    "opml"
                ]
            )
        }

        public static func xOrg() -> MediaType {
            .init(
                type: name,
                subtype: "x-org",
                possibleExtensions: [
                    "org"
                ]
            )
        }

        public static func xPascal() -> MediaType {
            .init(
                type: name,
                subtype: "x-pascal",
                possibleExtensions: [
                    "p",
                    "pas",
                ]
            )
        }

        public static func xProcessing() -> MediaType {
            .init(
                type: name,
                subtype: "x-processing",
                possibleExtensions: [
                    "pde"
                ]
            )
        }

        public static func xSass() -> MediaType {
            .init(
                type: name,
                subtype: "x-sass",
                possibleExtensions: [
                    "sass"
                ]
            )
        }

        public static func xScss() -> MediaType {
            .init(
                type: name,
                subtype: "x-scss",
                possibleExtensions: [
                    "scss"
                ]
            )
        }

        public static func xSetext() -> MediaType {
            .init(
                type: name,
                subtype: "x-setext",
                possibleExtensions: [
                    "etx"
                ]
            )
        }

        public static func xSfv() -> MediaType {
            .init(
                type: name,
                subtype: "x-sfv",
                possibleExtensions: [
                    "sfv"
                ]
            )
        }

        public static func xSuseYmp() -> MediaType {
            .init(
                type: name,
                subtype: "x-suse-ymp",
                possibleExtensions: [
                    "ymp"
                ]
            )
        }

        public static func xUuencode() -> MediaType {
            .init(
                type: name,
                subtype: "x-uuencode",
                possibleExtensions: [
                    "uu"
                ]
            )
        }

        public static func xVcalendar() -> MediaType {
            .init(
                type: name,
                subtype: "x-vcalendar",
                possibleExtensions: [
                    "vcs"
                ]
            )
        }

        public static func xVcard() -> MediaType {
            .init(
                type: name,
                subtype: "x-vcard",
                possibleExtensions: [
                    "vcf"
                ]
            )
        }

        public static func xml() -> MediaType {
            .init(
                type: name,
                subtype: "xml",
                possibleExtensions: [
                    "xml"
                ]
            )
        }

        public static func xmlExternalParsedEntity() -> MediaType {
            .init(
                type: name,
                subtype: "xml-external-parsed-entity"
            )
        }

        public static func yaml() -> MediaType {
            .init(
                type: name,
                subtype: "yaml",
                possibleExtensions: [
                    "yaml",
                    "yml",
                ]
            )
        }

    }

}
