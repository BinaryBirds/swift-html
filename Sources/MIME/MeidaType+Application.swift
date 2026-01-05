extension MediaType {

    public enum Application {

        static let name: String = "application"

        public static func _1dInterleavedParityfec() -> MediaType {
            .init(
                type: name,
                subtype: "1d-interleaved-parityfec"
            )
        }

        public static func _3gpdashQoeReportXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpdash-qoe-report",
                    suffix: "xml"
                )
            )
        }

        public static func _3gppImsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpp-ims",
                    suffix: "xml"
                )
            )
        }

        public static func _3gppMbsObjectManifestJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpp-mbs-object-manifest",
                    suffix: "json"
                )
            )
        }

        public static func _3gppMbsUserServiceDescriptionsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpp-mbs-user-service-descriptions",
                    suffix: "json"
                )
            )
        }

        public static func _3gppMediaDeliveryMetricsReportJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpp-media-delivery-metrics-report",
                    suffix: "json"
                )
            )
        }

        public static func _3gpphalJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpphal",
                    suffix: "json"
                )
            )
        }

        public static func _3gpphalformsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "3gpphalforms",
                    suffix: "json"
                )
            )
        }

        public static func a2l() -> MediaType {
            .init(
                type: name,
                subtype: "a2l"
            )
        }

        public static func aceCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ace",
                    suffix: "cbor"
                )
            )
        }

        public static func aceJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ace",
                    suffix: "json"
                )
            )
        }

        public static func aceGroupcommCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ace-groupcomm",
                    suffix: "cbor"
                )
            )
        }

        public static func aceTrlCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ace-trl",
                    suffix: "cbor"
                )
            )
        }

        public static func activemessage() -> MediaType {
            .init(
                type: name,
                subtype: "activemessage"
            )
        }

        public static func activityJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "activity",
                    suffix: "json"
                )
            )
        }

        public static func aifCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "aif",
                    suffix: "cbor"
                )
            )
        }

        public static func aifJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "aif",
                    suffix: "json"
                )
            )
        }

        public static func altoCdniJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-cdni",
                    suffix: "json"
                )
            )
        }

        public static func altoCdnifilterJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-cdnifilter",
                    suffix: "json"
                )
            )
        }

        public static func altoCostmapJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-costmap",
                    suffix: "json"
                )
            )
        }

        public static func altoCostmapfilterJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-costmapfilter",
                    suffix: "json"
                )
            )
        }

        public static func altoDirectoryJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-directory",
                    suffix: "json"
                )
            )
        }

        public static func altoEndpointcostJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-endpointcost",
                    suffix: "json"
                )
            )
        }

        public static func altoEndpointcostparamsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-endpointcostparams",
                    suffix: "json"
                )
            )
        }

        public static func altoEndpointpropJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-endpointprop",
                    suffix: "json"
                )
            )
        }

        public static func altoEndpointpropparamsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-endpointpropparams",
                    suffix: "json"
                )
            )
        }

        public static func altoErrorJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-error",
                    suffix: "json"
                )
            )
        }

        public static func altoNetworkmapJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-networkmap",
                    suffix: "json"
                )
            )
        }

        public static func altoNetworkmapfilterJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-networkmapfilter",
                    suffix: "json"
                )
            )
        }

        public static func altoPropmapJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-propmap",
                    suffix: "json"
                )
            )
        }

        public static func altoPropmapparamsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-propmapparams",
                    suffix: "json"
                )
            )
        }

        public static func altoTipsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-tips",
                    suffix: "json"
                )
            )
        }

        public static func altoTipsparamsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-tipsparams",
                    suffix: "json"
                )
            )
        }

        public static func altoUpdatestreamcontrolJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-updatestreamcontrol",
                    suffix: "json"
                )
            )
        }

        public static func altoUpdatestreamparamsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "alto-updatestreamparams",
                    suffix: "json"
                )
            )
        }

        public static func aml() -> MediaType {
            .init(
                type: name,
                subtype: "aml"
            )
        }

        public static func andrewInset() -> MediaType {
            .init(
                type: name,
                subtype: "andrew-inset",
                possibleExtensions: [
                    "ez"
                ]
            )
        }

        public static func appinstaller() -> MediaType {
            .init(
                type: name,
                subtype: "appinstaller",
                possibleExtensions: [
                    "appinstaller"
                ]
            )
        }

        public static func applefile() -> MediaType {
            .init(
                type: name,
                subtype: "applefile"
            )
        }

        public static func applixware() -> MediaType {
            .init(
                type: name,
                subtype: "applixware",
                possibleExtensions: [
                    "aw"
                ]
            )
        }

        public static func appx() -> MediaType {
            .init(
                type: name,
                subtype: "appx",
                possibleExtensions: [
                    "appx"
                ]
            )
        }

        public static func appxbundle() -> MediaType {
            .init(
                type: name,
                subtype: "appxbundle",
                possibleExtensions: [
                    "appxbundle"
                ]
            )
        }

        public static func asyncapiJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "asyncapi",
                    suffix: "json"
                )
            )
        }

        public static func asyncapiYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "asyncapi",
                    suffix: "yaml"
                )
            )
        }

        public static func atJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "at",
                    suffix: "jwt"
                )
            )
        }

        public static func atf() -> MediaType {
            .init(
                type: name,
                subtype: "atf"
            )
        }

        public static func atfx() -> MediaType {
            .init(
                type: name,
                subtype: "atfx"
            )
        }

        public static func atomXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atom",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "atom"
                ]
            )
        }

        public static func atomcatXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atomcat",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "atomcat"
                ]
            )
        }

        public static func atomdeletedXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atomdeleted",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "atomdeleted"
                ]
            )
        }

        public static func atomicmail() -> MediaType {
            .init(
                type: name,
                subtype: "atomicmail"
            )
        }

        public static func atomsvcXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atomsvc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "atomsvc"
                ]
            )
        }

        public static func atscDwdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atsc-dwd",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dwd"
                ]
            )
        }

        public static func atscDynamicEventMessage() -> MediaType {
            .init(
                type: name,
                subtype: "atsc-dynamic-event-message"
            )
        }

        public static func atscHeldXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atsc-held",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "held"
                ]
            )
        }

        public static func atscRdtJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atsc-rdt",
                    suffix: "json"
                )
            )
        }

        public static func atscRsatXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "atsc-rsat",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rsat"
                ]
            )
        }

        public static func atxml() -> MediaType {
            .init(
                type: name,
                subtype: "atxml"
            )
        }

        public static func authPolicyXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "auth-policy",
                    suffix: "xml"
                )
            )
        }

        public static func automationmlAmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "automationml-aml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "aml"
                ]
            )
        }

        public static func automationmlAmlxZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "automationml-amlx",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "amlx"
                ]
            )
        }

        public static func bacnetXddZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "bacnet-xdd",
                    suffix: "zip"
                )
            )
        }

        public static func batchSmtp() -> MediaType {
            .init(
                type: name,
                subtype: "batch-smtp"
            )
        }

        public static func bdoc() -> MediaType {
            .init(
                type: name,
                subtype: "bdoc",
                possibleExtensions: [
                    "bdoc"
                ]
            )
        }

        public static func beepXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "beep",
                    suffix: "xml"
                )
            )
        }

        public static func bufr() -> MediaType {
            .init(
                type: name,
                subtype: "bufr"
            )
        }

        public static func c2pa() -> MediaType {
            .init(
                type: name,
                subtype: "c2pa"
            )
        }

        public static func calendarJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "calendar",
                    suffix: "json"
                )
            )
        }

        public static func calendarXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "calendar",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xcs"
                ]
            )
        }

        public static func callCompletion() -> MediaType {
            .init(
                type: name,
                subtype: "call-completion"
            )
        }

        public static func cals1840() -> MediaType {
            .init(
                type: name,
                subtype: "cals-1840"
            )
        }

        public static func captiveJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "captive",
                    suffix: "json"
                )
            )
        }

        public static func cbor() -> MediaType {
            .init(
                type: name,
                subtype: "cbor"
            )
        }

        public static func cborSeq() -> MediaType {
            .init(
                type: name,
                subtype: "cbor-seq"
            )
        }

        public static func cccex() -> MediaType {
            .init(
                type: name,
                subtype: "cccex"
            )
        }

        public static func ccmpXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ccmp",
                    suffix: "xml"
                )
            )
        }

        public static func ccxmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ccxml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ccxml"
                ]
            )
        }

        public static func cdaXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cda",
                    suffix: "xml"
                )
            )
        }

        public static func cdfxXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cdfx",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "cdfx"
                ]
            )
        }

        public static func cdmiCapability() -> MediaType {
            .init(
                type: name,
                subtype: "cdmi-capability",
                possibleExtensions: [
                    "cdmia"
                ]
            )
        }

        public static func cdmiContainer() -> MediaType {
            .init(
                type: name,
                subtype: "cdmi-container",
                possibleExtensions: [
                    "cdmic"
                ]
            )
        }

        public static func cdmiDomain() -> MediaType {
            .init(
                type: name,
                subtype: "cdmi-domain",
                possibleExtensions: [
                    "cdmid"
                ]
            )
        }

        public static func cdmiObject() -> MediaType {
            .init(
                type: name,
                subtype: "cdmi-object",
                possibleExtensions: [
                    "cdmio"
                ]
            )
        }

        public static func cdmiQueue() -> MediaType {
            .init(
                type: name,
                subtype: "cdmi-queue",
                possibleExtensions: [
                    "cdmiq"
                ]
            )
        }

        public static func cdni() -> MediaType {
            .init(
                type: name,
                subtype: "cdni"
            )
        }

        public static func ceCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ce",
                    suffix: "cbor"
                )
            )
        }

        public static func cea() -> MediaType {
            .init(
                type: name,
                subtype: "cea"
            )
        }

        public static func cea2018Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cea-2018",
                    suffix: "xml"
                )
            )
        }

        public static func cellmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cellml",
                    suffix: "xml"
                )
            )
        }

        public static func cfw() -> MediaType {
            .init(
                type: name,
                subtype: "cfw"
            )
        }

        public static func cid() -> MediaType {
            .init(
                type: name,
                subtype: "cid"
            )
        }

        public static func cidEdhocCborSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cid-edhoc",
                    suffix: "cbor-seq"
                )
            )
        }

        public static func cityJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "city",
                    suffix: "json"
                )
            )
        }

        public static func cityJsonSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "city",
                    suffix: "json-seq"
                )
            )
        }

        public static func clr() -> MediaType {
            .init(
                type: name,
                subtype: "clr"
            )
        }

        public static func clueXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "clue",
                    suffix: "xml"
                )
            )
        }

        public static func clueInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "clue_info",
                    suffix: "xml"
                )
            )
        }

        public static func cms() -> MediaType {
            .init(
                type: name,
                subtype: "cms"
            )
        }

        public static func cnrpXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cnrp",
                    suffix: "xml"
                )
            )
        }

        public static func coapEap() -> MediaType {
            .init(
                type: name,
                subtype: "coap-eap"
            )
        }

        public static func coapGroupJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "coap-group",
                    suffix: "json"
                )
            )
        }

        public static func coapPayload() -> MediaType {
            .init(
                type: name,
                subtype: "coap-payload"
            )
        }

        public static func commonground() -> MediaType {
            .init(
                type: name,
                subtype: "commonground"
            )
        }

        public static func conciseProblemDetailsCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "concise-problem-details",
                    suffix: "cbor"
                )
            )
        }

        public static func conferenceInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "conference-info",
                    suffix: "xml"
                )
            )
        }

        public static func cose() -> MediaType {
            .init(
                type: name,
                subtype: "cose"
            )
        }

        public static func coseKey() -> MediaType {
            .init(
                type: name,
                subtype: "cose-key"
            )
        }

        public static func coseKeySet() -> MediaType {
            .init(
                type: name,
                subtype: "cose-key-set"
            )
        }

        public static func coseX509() -> MediaType {
            .init(
                type: name,
                subtype: "cose-x509"
            )
        }

        public static func cplXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cpl",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "cpl"
                ]
            )
        }

        public static func csrattrs() -> MediaType {
            .init(
                type: name,
                subtype: "csrattrs"
            )
        }

        public static func cstaXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "csta",
                    suffix: "xml"
                )
            )
        }

        public static func cstadataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cstadata",
                    suffix: "xml"
                )
            )
        }

        public static func csvmJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "csvm",
                    suffix: "json"
                )
            )
        }

        public static func cuSeeme() -> MediaType {
            .init(
                type: name,
                subtype: "cu-seeme",
                possibleExtensions: [
                    "cu"
                ]
            )
        }

        public static func cwl() -> MediaType {
            .init(
                type: name,
                subtype: "cwl",
                possibleExtensions: [
                    "cwl"
                ]
            )
        }

        public static func cwlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cwl",
                    suffix: "json"
                )
            )
        }

        public static func cwlYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "cwl",
                    suffix: "yaml"
                )
            )
        }

        public static func cwt() -> MediaType {
            .init(
                type: name,
                subtype: "cwt"
            )
        }

        public static func cybercash() -> MediaType {
            .init(
                type: name,
                subtype: "cybercash"
            )
        }

        public static func dart() -> MediaType {
            .init(
                type: name,
                subtype: "dart"
            )
        }

        public static func dashXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dash",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mpd"
                ]
            )
        }

        public static func dashPatchXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dash-patch",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mpp"
                ]
            )
        }

        public static func dashdelta() -> MediaType {
            .init(
                type: name,
                subtype: "dashdelta"
            )
        }

        public static func davmountXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "davmount",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "davmount"
                ]
            )
        }

        public static func dcaRft() -> MediaType {
            .init(
                type: name,
                subtype: "dca-rft"
            )
        }

        public static func dcd() -> MediaType {
            .init(
                type: name,
                subtype: "dcd"
            )
        }

        public static func decDx() -> MediaType {
            .init(
                type: name,
                subtype: "dec-dx"
            )
        }

        public static func dialogInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dialog-info",
                    suffix: "xml"
                )
            )
        }

        public static func dicom() -> MediaType {
            .init(
                type: name,
                subtype: "dicom",
                possibleExtensions: [
                    "dcm"
                ]
            )
        }

        public static func dicomJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dicom",
                    suffix: "json"
                )
            )
        }

        public static func dicomXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dicom",
                    suffix: "xml"
                )
            )
        }

        public static func did() -> MediaType {
            .init(
                type: name,
                subtype: "did"
            )
        }

        public static func dii() -> MediaType {
            .init(
                type: name,
                subtype: "dii"
            )
        }

        public static func dit() -> MediaType {
            .init(
                type: name,
                subtype: "dit"
            )
        }

        public static func dns() -> MediaType {
            .init(
                type: name,
                subtype: "dns"
            )
        }

        public static func dnsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dns",
                    suffix: "json"
                )
            )
        }

        public static func dnsMessage() -> MediaType {
            .init(
                type: name,
                subtype: "dns-message"
            )
        }

        public static func docbookXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "docbook",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dbk"
                ]
            )
        }

        public static func dotsCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dots",
                    suffix: "cbor"
                )
            )
        }

        public static func dpopJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dpop",
                    suffix: "jwt"
                )
            )
        }

        public static func dskppXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dskpp",
                    suffix: "xml"
                )
            )
        }

        public static func dsscDer() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dssc",
                    suffix: "der"
                ),
                possibleExtensions: [
                    "dssc"
                ]
            )
        }

        public static func dsscXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "dssc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xdssc"
                ]
            )
        }

        public static func dvcs() -> MediaType {
            .init(
                type: name,
                subtype: "dvcs"
            )
        }

        public static func eatCwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat",
                    suffix: "cwt"
                )
            )
        }

        public static func eatJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat",
                    suffix: "jwt"
                )
            )
        }

        public static func eatBunCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat-bun",
                    suffix: "cbor"
                )
            )
        }

        public static func eatBunJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat-bun",
                    suffix: "json"
                )
            )
        }

        public static func eatUcsCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat-ucs",
                    suffix: "cbor"
                )
            )
        }

        public static func eatUcsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "eat-ucs",
                    suffix: "json"
                )
            )
        }

        public static func ecmascript() -> MediaType {
            .init(
                type: name,
                subtype: "ecmascript",
                possibleExtensions: [
                    "ecma"
                ]
            )
        }

        public static func edhocCborSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "edhoc",
                    suffix: "cbor-seq"
                )
            )
        }

        public static func ediConsent() -> MediaType {
            .init(
                type: name,
                subtype: "edi-consent"
            )
        }

        public static func ediX12() -> MediaType {
            .init(
                type: name,
                subtype: "edi-x12"
            )
        }

        public static func edifact() -> MediaType {
            .init(
                type: name,
                subtype: "edifact"
            )
        }

        public static func efi() -> MediaType {
            .init(
                type: name,
                subtype: "efi"
            )
        }

        public static func elmJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "elm",
                    suffix: "json"
                )
            )
        }

        public static func elmXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "elm",
                    suffix: "xml"
                )
            )
        }

        public static func emergencycalldataCapXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.cap",
                    suffix: "xml"
                )
            )
        }

        public static func emergencycalldataCommentXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.comment",
                    suffix: "xml"
                )
            )
        }

        public static func emergencycalldataControlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.control",
                    suffix: "xml"
                )
            )
        }

        public static func emergencycalldataDeviceinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.deviceinfo",
                    suffix: "xml"
                )
            )
        }

        public static func emergencycalldataEcallMsd() -> MediaType {
            .init(
                type: name,
                subtype: "emergencycalldata.ecall.msd"
            )
        }

        public static func emergencycalldataLegacyesnJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.legacyesn",
                    suffix: "json"
                )
            )
        }

        public static func emergencycalldataProviderinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.providerinfo",
                    suffix: "xml"
                )
            )
        }

        public static func emergencycalldataServiceinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.serviceinfo",
                    suffix: "xml"
                )
            )
        }

        public static func emergencycalldataSubscriberinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.subscriberinfo",
                    suffix: "xml"
                )
            )
        }

        public static func emergencycalldataVedsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emergencycalldata.veds",
                    suffix: "xml"
                )
            )
        }

        public static func emmaXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emma",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "emma"
                ]
            )
        }

        public static func emotionmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "emotionml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "emotionml"
                ]
            )
        }

        public static func encaprtp() -> MediaType {
            .init(
                type: name,
                subtype: "encaprtp"
            )
        }

        public static func entityStatementJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "entity-statement",
                    suffix: "jwt"
                )
            )
        }

        public static func eppXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "epp",
                    suffix: "xml"
                )
            )
        }

        public static func epubZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "epub",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "epub"
                ]
            )
        }

        public static func eshop() -> MediaType {
            .init(
                type: name,
                subtype: "eshop"
            )
        }

        public static func exi() -> MediaType {
            .init(
                type: name,
                subtype: "exi",
                possibleExtensions: [
                    "exi"
                ]
            )
        }

        public static func expectCtReportJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "expect-ct-report",
                    suffix: "json"
                )
            )
        }

        public static func express() -> MediaType {
            .init(
                type: name,
                subtype: "express",
                possibleExtensions: [
                    "exp"
                ]
            )
        }

        public static func fastinfoset() -> MediaType {
            .init(
                type: name,
                subtype: "fastinfoset"
            )
        }

        public static func fastsoap() -> MediaType {
            .init(
                type: name,
                subtype: "fastsoap"
            )
        }

        public static func fdf() -> MediaType {
            .init(
                type: name,
                subtype: "fdf",
                possibleExtensions: [
                    "fdf"
                ]
            )
        }

        public static func fdtXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "fdt",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "fdt"
                ]
            )
        }

        public static func fhirJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "fhir",
                    suffix: "json"
                )
            )
        }

        public static func fhirXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "fhir",
                    suffix: "xml"
                )
            )
        }

        public static func fidoTrustedAppsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "fido.trusted-apps",
                    suffix: "json"
                )
            )
        }

        public static func fits() -> MediaType {
            .init(
                type: name,
                subtype: "fits"
            )
        }

        public static func flexfec() -> MediaType {
            .init(
                type: name,
                subtype: "flexfec"
            )
        }

        public static func fontSfnt() -> MediaType {
            .init(
                type: name,
                subtype: "font-sfnt"
            )
        }

        public static func fontTdpfr() -> MediaType {
            .init(
                type: name,
                subtype: "font-tdpfr",
                possibleExtensions: [
                    "pfr"
                ]
            )
        }

        public static func fontWoff() -> MediaType {
            .init(
                type: name,
                subtype: "font-woff"
            )
        }

        public static func frameworkAttributesXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "framework-attributes",
                    suffix: "xml"
                )
            )
        }

        public static func geoJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geo",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "geojson"
                ]
            )
        }

        public static func geoJsonSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geo",
                    suffix: "json-seq"
                )
            )
        }

        public static func geofeedCsv() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geofeed",
                    suffix: "csv"
                )
            )
        }

        public static func geopackageSqlite3() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geopackage",
                    suffix: "sqlite3"
                )
            )
        }

        public static func geoposeJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geopose",
                    suffix: "json"
                )
            )
        }

        public static func geoxacmlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geoxacml",
                    suffix: "json"
                )
            )
        }

        public static func geoxacmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "geoxacml",
                    suffix: "xml"
                )
            )
        }

        public static func gltfBuffer() -> MediaType {
            .init(
                type: name,
                subtype: "gltf-buffer"
            )
        }

        public static func gmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "gml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "gml"
                ]
            )
        }

        public static func gnapBindingJws() -> MediaType {
            .init(
                type: name,
                subtype: "gnap-binding-jws"
            )
        }

        public static func gnapBindingJwsd() -> MediaType {
            .init(
                type: name,
                subtype: "gnap-binding-jwsd"
            )
        }

        public static func gnapBindingRotationJws() -> MediaType {
            .init(
                type: name,
                subtype: "gnap-binding-rotation-jws"
            )
        }

        public static func gnapBindingRotationJwsd() -> MediaType {
            .init(
                type: name,
                subtype: "gnap-binding-rotation-jwsd"
            )
        }

        public static func gpxXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "gpx",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "gpx"
                ]
            )
        }

        public static func grib() -> MediaType {
            .init(
                type: name,
                subtype: "grib"
            )
        }

        public static func gxf() -> MediaType {
            .init(
                type: name,
                subtype: "gxf",
                possibleExtensions: [
                    "gxf"
                ]
            )
        }

        public static func gzip() -> MediaType {
            .init(
                type: name,
                subtype: "gzip",
                possibleExtensions: [
                    "gz"
                ]
            )
        }

        public static func h224() -> MediaType {
            .init(
                type: name,
                subtype: "h224"
            )
        }

        public static func heldXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "held",
                    suffix: "xml"
                )
            )
        }

        public static func hjson() -> MediaType {
            .init(
                type: name,
                subtype: "hjson",
                possibleExtensions: [
                    "hjson"
                ]
            )
        }

        public static func hl7v2Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "hl7v2",
                    suffix: "xml"
                )
            )
        }

        public static func http() -> MediaType {
            .init(
                type: name,
                subtype: "http"
            )
        }

        public static func hyperstudio() -> MediaType {
            .init(
                type: name,
                subtype: "hyperstudio",
                possibleExtensions: [
                    "stk"
                ]
            )
        }

        public static func ibeKeyRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ibe-key-request",
                    suffix: "xml"
                )
            )
        }

        public static func ibePkgReplyXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ibe-pkg-reply",
                    suffix: "xml"
                )
            )
        }

        public static func ibePpData() -> MediaType {
            .init(
                type: name,
                subtype: "ibe-pp-data"
            )
        }

        public static func iges() -> MediaType {
            .init(
                type: name,
                subtype: "iges"
            )
        }

        public static func imIscomposingXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "im-iscomposing",
                    suffix: "xml"
                )
            )
        }

        public static func index() -> MediaType {
            .init(
                type: name,
                subtype: "index"
            )
        }

        public static func indexCmd() -> MediaType {
            .init(
                type: name,
                subtype: "index.cmd"
            )
        }

        public static func indexObj() -> MediaType {
            .init(
                type: name,
                subtype: "index.obj"
            )
        }

        public static func indexResponse() -> MediaType {
            .init(
                type: name,
                subtype: "index.response"
            )
        }

        public static func indexVnd() -> MediaType {
            .init(
                type: name,
                subtype: "index.vnd"
            )
        }

        public static func inkmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "inkml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ink",
                    "inkml",
                ]
            )
        }

        public static func iotp() -> MediaType {
            .init(
                type: name,
                subtype: "iotp"
            )
        }

        public static func ipfix() -> MediaType {
            .init(
                type: name,
                subtype: "ipfix",
                possibleExtensions: [
                    "ipfix"
                ]
            )
        }

        public static func ipp() -> MediaType {
            .init(
                type: name,
                subtype: "ipp"
            )
        }

        public static func isup() -> MediaType {
            .init(
                type: name,
                subtype: "isup"
            )
        }

        public static func itsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "its",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "its"
                ]
            )
        }

        public static func javaArchive() -> MediaType {
            .init(
                type: name,
                subtype: "java-archive",
                possibleExtensions: [
                    "jar",
                    "war",
                    "ear",
                ]
            )
        }

        public static func javaSerializedObject() -> MediaType {
            .init(
                type: name,
                subtype: "java-serialized-object",
                possibleExtensions: [
                    "ser"
                ]
            )
        }

        public static func javaVm() -> MediaType {
            .init(
                type: name,
                subtype: "java-vm",
                possibleExtensions: [
                    "class"
                ]
            )
        }

        public static func javascript() -> MediaType {
            .init(
                type: name,
                subtype: "javascript",
                possibleExtensions: [
                    "js"
                ]
            )
        }

        public static func jf2feedJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jf2feed",
                    suffix: "json"
                )
            )
        }

        public static func jose() -> MediaType {
            .init(
                type: name,
                subtype: "jose"
            )
        }

        public static func joseJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jose",
                    suffix: "json"
                )
            )
        }

        public static func jrdJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jrd",
                    suffix: "json"
                )
            )
        }

        public static func jscalendarJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jscalendar",
                    suffix: "json"
                )
            )
        }

        public static func jscontactJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jscontact",
                    suffix: "json"
                )
            )
        }

        public static func json() -> MediaType {
            .init(
                type: name,
                subtype: "json",
                possibleExtensions: [
                    "json",
                    "map",
                ]
            )
        }

        public static func jsonPatchJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "json-patch",
                    suffix: "json"
                )
            )
        }

        public static func jsonPatchQueryJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "json-patch-query",
                    suffix: "json"
                )
            )
        }

        public static func jsonSeq() -> MediaType {
            .init(
                type: name,
                subtype: "json-seq"
            )
        }

        public static func json5() -> MediaType {
            .init(
                type: name,
                subtype: "json5",
                possibleExtensions: [
                    "json5"
                ]
            )
        }

        public static func jsonmlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jsonml",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "jsonml"
                ]
            )
        }

        public static func jsonpath() -> MediaType {
            .init(
                type: name,
                subtype: "jsonpath"
            )
        }

        public static func jwkJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jwk",
                    suffix: "json"
                )
            )
        }

        public static func jwkSetJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jwk-set",
                    suffix: "json"
                )
            )
        }

        public static func jwkSetJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "jwk-set",
                    suffix: "jwt"
                )
            )
        }

        public static func jwt() -> MediaType {
            .init(
                type: name,
                subtype: "jwt"
            )
        }

        public static func kbJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "kb",
                    suffix: "jwt"
                )
            )
        }

        public static func kblXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "kbl",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "kbl"
                ]
            )
        }

        public static func kpmlRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "kpml-request",
                    suffix: "xml"
                )
            )
        }

        public static func kpmlResponseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "kpml-response",
                    suffix: "xml"
                )
            )
        }

        public static func ldJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ld",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "jsonld"
                ]
            )
        }

        public static func lgrXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "lgr",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "lgr"
                ]
            )
        }

        public static func linkFormat() -> MediaType {
            .init(
                type: name,
                subtype: "link-format"
            )
        }

        public static func linkset() -> MediaType {
            .init(
                type: name,
                subtype: "linkset"
            )
        }

        public static func linksetJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "linkset",
                    suffix: "json"
                )
            )
        }

        public static func loadControlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "load-control",
                    suffix: "xml"
                )
            )
        }

        public static func logoutJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "logout",
                    suffix: "jwt"
                )
            )
        }

        public static func lostXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "lost",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "lostxml"
                ]
            )
        }

        public static func lostsyncXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "lostsync",
                    suffix: "xml"
                )
            )
        }

        public static func lpfZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "lpf",
                    suffix: "zip"
                )
            )
        }

        public static func lxf() -> MediaType {
            .init(
                type: name,
                subtype: "lxf"
            )
        }

        public static func macBinhex40() -> MediaType {
            .init(
                type: name,
                subtype: "mac-binhex40",
                possibleExtensions: [
                    "hqx"
                ]
            )
        }

        public static func macCompactpro() -> MediaType {
            .init(
                type: name,
                subtype: "mac-compactpro",
                possibleExtensions: [
                    "cpt"
                ]
            )
        }

        public static func macwriteii() -> MediaType {
            .init(
                type: name,
                subtype: "macwriteii"
            )
        }

        public static func madsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mads",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mads"
                ]
            )
        }

        public static func manifestJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "manifest",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "webmanifest"
                ]
            )
        }

        public static func marc() -> MediaType {
            .init(
                type: name,
                subtype: "marc",
                possibleExtensions: [
                    "mrc"
                ]
            )
        }

        public static func marcxmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "marcxml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mrcx"
                ]
            )
        }

        public static func mathematica() -> MediaType {
            .init(
                type: name,
                subtype: "mathematica",
                possibleExtensions: [
                    "ma",
                    "nb",
                    "mb",
                ]
            )
        }

        public static func mathmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mathml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mathml"
                ]
            )
        }

        public static func mathmlContentXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mathml-content",
                    suffix: "xml"
                )
            )
        }

        public static func mathmlPresentationXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mathml-presentation",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsAssociatedProcedureDescriptionXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-associated-procedure-description",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsDeregisterXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-deregister",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsEnvelopeXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-envelope",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsMskXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-msk",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsMskResponseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-msk-response",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsProtectionDescriptionXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-protection-description",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsReceptionReportXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-reception-report",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsRegisterXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-register",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsRegisterResponseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-register-response",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsScheduleXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-schedule",
                    suffix: "xml"
                )
            )
        }

        public static func mbmsUserServiceDescriptionXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mbms-user-service-description",
                    suffix: "xml"
                )
            )
        }

        public static func mbox() -> MediaType {
            .init(
                type: name,
                subtype: "mbox",
                possibleExtensions: [
                    "mbox"
                ]
            )
        }

        public static func mediaPolicyDatasetXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "media-policy-dataset",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mpf"
                ]
            )
        }

        public static func mediaControlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "media_control",
                    suffix: "xml"
                )
            )
        }

        public static func mediaservercontrolXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mediaservercontrol",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mscml"
                ]
            )
        }

        public static func mergePatchJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "merge-patch",
                    suffix: "json"
                )
            )
        }

        public static func metalinkXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "metalink",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "metalink"
                ]
            )
        }

        public static func metalink4Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "metalink4",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "meta4"
                ]
            )
        }

        public static func metsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mets",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mets"
                ]
            )
        }

        public static func mf4() -> MediaType {
            .init(
                type: name,
                subtype: "mf4"
            )
        }

        public static func mikey() -> MediaType {
            .init(
                type: name,
                subtype: "mikey"
            )
        }

        public static func mipc() -> MediaType {
            .init(
                type: name,
                subtype: "mipc"
            )
        }

        public static func missingBlocksCborSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "missing-blocks",
                    suffix: "cbor-seq"
                )
            )
        }

        public static func mmtAeiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mmt-aei",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "maei"
                ]
            )
        }

        public static func mmtUsdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mmt-usd",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "musd"
                ]
            )
        }

        public static func modsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mods",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mods"
                ]
            )
        }

        public static func mossKeys() -> MediaType {
            .init(
                type: name,
                subtype: "moss-keys"
            )
        }

        public static func mossSignature() -> MediaType {
            .init(
                type: name,
                subtype: "moss-signature"
            )
        }

        public static func mosskeyData() -> MediaType {
            .init(
                type: name,
                subtype: "mosskey-data"
            )
        }

        public static func mosskeyRequest() -> MediaType {
            .init(
                type: name,
                subtype: "mosskey-request"
            )
        }

        public static func mp21() -> MediaType {
            .init(
                type: name,
                subtype: "mp21",
                possibleExtensions: [
                    "m21",
                    "mp21",
                ]
            )
        }

        public static func mp4() -> MediaType {
            .init(
                type: name,
                subtype: "mp4",
                possibleExtensions: [
                    "mp4",
                    "mpg4",
                    "mp4s",
                    "m4p",
                ]
            )
        }

        public static func mpeg4Generic() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg4-generic"
            )
        }

        public static func mpeg4Iod() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg4-iod"
            )
        }

        public static func mpeg4IodXmt() -> MediaType {
            .init(
                type: name,
                subtype: "mpeg4-iod-xmt"
            )
        }

        public static func mrbConsumerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mrb-consumer",
                    suffix: "xml"
                )
            )
        }

        public static func mrbPublishXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mrb-publish",
                    suffix: "xml"
                )
            )
        }

        public static func mscIvrXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "msc-ivr",
                    suffix: "xml"
                )
            )
        }

        public static func mscMixerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "msc-mixer",
                    suffix: "xml"
                )
            )
        }

        public static func msix() -> MediaType {
            .init(
                type: name,
                subtype: "msix",
                possibleExtensions: [
                    "msix"
                ]
            )
        }

        public static func msixbundle() -> MediaType {
            .init(
                type: name,
                subtype: "msixbundle",
                possibleExtensions: [
                    "msixbundle"
                ]
            )
        }

        public static func msword() -> MediaType {
            .init(
                type: name,
                subtype: "msword",
                possibleExtensions: [
                    "doc",
                    "dot",
                ]
            )
        }

        public static func mudJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "mud",
                    suffix: "json"
                )
            )
        }

        public static func multipartCore() -> MediaType {
            .init(
                type: name,
                subtype: "multipart-core"
            )
        }

        public static func mxf() -> MediaType {
            .init(
                type: name,
                subtype: "mxf",
                possibleExtensions: [
                    "mxf"
                ]
            )
        }

        public static func nQuads() -> MediaType {
            .init(
                type: name,
                subtype: "n-quads",
                possibleExtensions: [
                    "nq"
                ]
            )
        }

        public static func nTriples() -> MediaType {
            .init(
                type: name,
                subtype: "n-triples",
                possibleExtensions: [
                    "nt"
                ]
            )
        }

        public static func nasdata() -> MediaType {
            .init(
                type: name,
                subtype: "nasdata"
            )
        }

        public static func newsCheckgroups() -> MediaType {
            .init(
                type: name,
                subtype: "news-checkgroups"
            )
        }

        public static func newsGroupinfo() -> MediaType {
            .init(
                type: name,
                subtype: "news-groupinfo"
            )
        }

        public static func newsTransmission() -> MediaType {
            .init(
                type: name,
                subtype: "news-transmission"
            )
        }

        public static func nlsmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "nlsml",
                    suffix: "xml"
                )
            )
        }

        public static func node() -> MediaType {
            .init(
                type: name,
                subtype: "node",
                possibleExtensions: [
                    "cjs"
                ]
            )
        }

        public static func nss() -> MediaType {
            .init(
                type: name,
                subtype: "nss"
            )
        }

        public static func oauthAuthzReqJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "oauth-authz-req",
                    suffix: "jwt"
                )
            )
        }

        public static func obliviousDnsMessage() -> MediaType {
            .init(
                type: name,
                subtype: "oblivious-dns-message"
            )
        }

        public static func ocspRequest() -> MediaType {
            .init(
                type: name,
                subtype: "ocsp-request"
            )
        }

        public static func ocspResponse() -> MediaType {
            .init(
                type: name,
                subtype: "ocsp-response"
            )
        }

        public static func octetStream() -> MediaType {
            .init(
                type: name,
                subtype: "octet-stream",
                possibleExtensions: [
                    "bin",
                    "dms",
                    "lrf",
                    "mar",
                    "so",
                    "dist",
                    "distz",
                    "pkg",
                    "bpk",
                    "dump",
                    "elc",
                    "deploy",
                    "exe",
                    "dll",
                    "deb",
                    "dmg",
                    "iso",
                    "img",
                    "msi",
                    "msp",
                    "msm",
                    "buffer",
                ]
            )
        }

        public static func oda() -> MediaType {
            .init(
                type: name,
                subtype: "oda",
                possibleExtensions: [
                    "oda"
                ]
            )
        }

        public static func odmXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "odm",
                    suffix: "xml"
                )
            )
        }

        public static func odx() -> MediaType {
            .init(
                type: name,
                subtype: "odx"
            )
        }

        public static func oebpsPackageXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "oebps-package",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "opf"
                ]
            )
        }

        public static func ogg() -> MediaType {
            .init(
                type: name,
                subtype: "ogg",
                possibleExtensions: [
                    "ogx"
                ]
            )
        }

        public static func ohttpKeys() -> MediaType {
            .init(
                type: name,
                subtype: "ohttp-keys"
            )
        }

        public static func omdocXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "omdoc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "omdoc"
                ]
            )
        }

        public static func onenote() -> MediaType {
            .init(
                type: name,
                subtype: "onenote",
                possibleExtensions: [
                    "onetoc",
                    "onetoc2",
                    "onetmp",
                    "onepkg",
                    "one",
                    "onea",
                ]
            )
        }

        public static func opcNodesetXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "opc-nodeset",
                    suffix: "xml"
                )
            )
        }

        public static func oscore() -> MediaType {
            .init(
                type: name,
                subtype: "oscore"
            )
        }

        public static func oxps() -> MediaType {
            .init(
                type: name,
                subtype: "oxps",
                possibleExtensions: [
                    "oxps"
                ]
            )
        }

        public static func p21() -> MediaType {
            .init(
                type: name,
                subtype: "p21"
            )
        }

        public static func p21Zip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "p21",
                    suffix: "zip"
                )
            )
        }

        public static func p2pOverlayXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "p2p-overlay",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "relo"
                ]
            )
        }

        public static func parityfec() -> MediaType {
            .init(
                type: name,
                subtype: "parityfec"
            )
        }

        public static func passport() -> MediaType {
            .init(
                type: name,
                subtype: "passport"
            )
        }

        public static func patchOpsErrorXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "patch-ops-error",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xer"
                ]
            )
        }

        public static func pdf() -> MediaType {
            .init(
                type: name,
                subtype: "pdf",
                possibleExtensions: [
                    "pdf"
                ]
            )
        }

        public static func pdx() -> MediaType {
            .init(
                type: name,
                subtype: "pdx"
            )
        }

        public static func pemCertificateChain() -> MediaType {
            .init(
                type: name,
                subtype: "pem-certificate-chain"
            )
        }

        public static func pgpEncrypted() -> MediaType {
            .init(
                type: name,
                subtype: "pgp-encrypted",
                possibleExtensions: [
                    "pgp"
                ]
            )
        }

        public static func pgpKeys() -> MediaType {
            .init(
                type: name,
                subtype: "pgp-keys",
                possibleExtensions: [
                    "asc"
                ]
            )
        }

        public static func pgpSignature() -> MediaType {
            .init(
                type: name,
                subtype: "pgp-signature",
                possibleExtensions: [
                    "sig",
                    "asc",
                ]
            )
        }

        public static func picsRules() -> MediaType {
            .init(
                type: name,
                subtype: "pics-rules",
                possibleExtensions: [
                    "prf"
                ]
            )
        }

        public static func pidfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "pidf",
                    suffix: "xml"
                )
            )
        }

        public static func pidfDiffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "pidf-diff",
                    suffix: "xml"
                )
            )
        }

        public static func pkcs10() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs10",
                possibleExtensions: [
                    "p10"
                ]
            )
        }

        public static func pkcs12() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs12"
            )
        }

        public static func pkcs7Mime() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs7-mime",
                possibleExtensions: [
                    "p7m",
                    "p7c",
                ]
            )
        }

        public static func pkcs7Signature() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs7-signature",
                possibleExtensions: [
                    "p7s"
                ]
            )
        }

        public static func pkcs8() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs8",
                possibleExtensions: [
                    "p8"
                ]
            )
        }

        public static func pkcs8Encrypted() -> MediaType {
            .init(
                type: name,
                subtype: "pkcs8-encrypted"
            )
        }

        public static func pkixAttrCert() -> MediaType {
            .init(
                type: name,
                subtype: "pkix-attr-cert",
                possibleExtensions: [
                    "ac"
                ]
            )
        }

        public static func pkixCert() -> MediaType {
            .init(
                type: name,
                subtype: "pkix-cert",
                possibleExtensions: [
                    "cer"
                ]
            )
        }

        public static func pkixCrl() -> MediaType {
            .init(
                type: name,
                subtype: "pkix-crl",
                possibleExtensions: [
                    "crl"
                ]
            )
        }

        public static func pkixPkipath() -> MediaType {
            .init(
                type: name,
                subtype: "pkix-pkipath",
                possibleExtensions: [
                    "pkipath"
                ]
            )
        }

        public static func pkixcmp() -> MediaType {
            .init(
                type: name,
                subtype: "pkixcmp",
                possibleExtensions: [
                    "pki"
                ]
            )
        }

        public static func plsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "pls",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "pls"
                ]
            )
        }

        public static func pocSettingsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "poc-settings",
                    suffix: "xml"
                )
            )
        }

        public static func postscript() -> MediaType {
            .init(
                type: name,
                subtype: "postscript",
                possibleExtensions: [
                    "ai",
                    "eps",
                    "ps",
                ]
            )
        }

        public static func ppspTrackerJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ppsp-tracker",
                    suffix: "json"
                )
            )
        }

        public static func privateTokenIssuerDirectory() -> MediaType {
            .init(
                type: name,
                subtype: "private-token-issuer-directory"
            )
        }

        public static func privateTokenRequest() -> MediaType {
            .init(
                type: name,
                subtype: "private-token-request"
            )
        }

        public static func privateTokenResponse() -> MediaType {
            .init(
                type: name,
                subtype: "private-token-response"
            )
        }

        public static func problemJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "problem",
                    suffix: "json"
                )
            )
        }

        public static func problemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "problem",
                    suffix: "xml"
                )
            )
        }

        public static func protobuf() -> MediaType {
            .init(
                type: name,
                subtype: "protobuf"
            )
        }

        public static func protobufJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "protobuf",
                    suffix: "json"
                )
            )
        }

        public static func provenanceXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "provenance",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "provx"
                ]
            )
        }

        public static func providedClaimsJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "provided-claims",
                    suffix: "jwt"
                )
            )
        }

        public static func prsAlvestrandTitraxSheet() -> MediaType {
            .init(
                type: name,
                subtype: "prs.alvestrand.titrax-sheet"
            )
        }

        public static func prsCww() -> MediaType {
            .init(
                type: name,
                subtype: "prs.cww",
                possibleExtensions: [
                    "cww"
                ]
            )
        }

        public static func prsCyn() -> MediaType {
            .init(
                type: name,
                subtype: "prs.cyn"
            )
        }

        public static func prsHpubZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.hpub",
                    suffix: "zip"
                )
            )
        }

        public static func prsImpliedDocumentXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.implied-document",
                    suffix: "xml"
                )
            )
        }

        public static func prsImpliedExecutable() -> MediaType {
            .init(
                type: name,
                subtype: "prs.implied-executable"
            )
        }

        public static func prsImpliedObjectJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.implied-object",
                    suffix: "json"
                )
            )
        }

        public static func prsImpliedObjectJsonSeq() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.implied-object",
                    suffix: "json-seq"
                )
            )
        }

        public static func prsImpliedObjectYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.implied-object",
                    suffix: "yaml"
                )
            )
        }

        public static func prsImpliedStructure() -> MediaType {
            .init(
                type: name,
                subtype: "prs.implied-structure"
            )
        }

        public static func prsMayfile() -> MediaType {
            .init(
                type: name,
                subtype: "prs.mayfile"
            )
        }

        public static func prsNprend() -> MediaType {
            .init(
                type: name,
                subtype: "prs.nprend"
            )
        }

        public static func prsPlucker() -> MediaType {
            .init(
                type: name,
                subtype: "prs.plucker"
            )
        }

        public static func prsRdfXmlCrypt() -> MediaType {
            .init(
                type: name,
                subtype: "prs.rdf-xml-crypt"
            )
        }

        public static func prsVcfbzip2() -> MediaType {
            .init(
                type: name,
                subtype: "prs.vcfbzip2"
            )
        }

        public static func prsXsfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "prs.xsf",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xsf"
                ]
            )
        }

        public static func pskcXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "pskc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "pskcxml"
                ]
            )
        }

        public static func pvdJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "pvd",
                    suffix: "json"
                )
            )
        }

        public static func qsig() -> MediaType {
            .init(
                type: name,
                subtype: "qsig"
            )
        }

        public static func ramlYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "raml",
                    suffix: "yaml"
                ),
                possibleExtensions: [
                    "raml"
                ]
            )
        }

        public static func raptorfec() -> MediaType {
            .init(
                type: name,
                subtype: "raptorfec"
            )
        }

        public static func rdapJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rdap",
                    suffix: "json"
                )
            )
        }

        public static func rdfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rdf",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rdf",
                    "owl",
                ]
            )
        }

        public static func reginfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "reginfo",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rif"
                ]
            )
        }

        public static func relaxNgCompactSyntax() -> MediaType {
            .init(
                type: name,
                subtype: "relax-ng-compact-syntax",
                possibleExtensions: [
                    "rnc"
                ]
            )
        }

        public static func remotePrinting() -> MediaType {
            .init(
                type: name,
                subtype: "remote-printing"
            )
        }

        public static func reputonJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "reputon",
                    suffix: "json"
                )
            )
        }

        public static func resolveResponseJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "resolve-response",
                    suffix: "jwt"
                )
            )
        }

        public static func resourceListsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "resource-lists",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rl"
                ]
            )
        }

        public static func resourceListsDiffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "resource-lists-diff",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rld"
                ]
            )
        }

        public static func rfcXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rfc",
                    suffix: "xml"
                )
            )
        }

        public static func riscos() -> MediaType {
            .init(
                type: name,
                subtype: "riscos"
            )
        }

        public static func rlmiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rlmi",
                    suffix: "xml"
                )
            )
        }

        public static func rlsServicesXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rls-services",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rs"
                ]
            )
        }

        public static func routeApdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "route-apd",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rapd"
                ]
            )
        }

        public static func routeSTsidXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "route-s-tsid",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "sls"
                ]
            )
        }

        public static func routeUsdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "route-usd",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rusd"
                ]
            )
        }

        public static func rpkiChecklist() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-checklist"
            )
        }

        public static func rpkiGhostbusters() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-ghostbusters",
                possibleExtensions: [
                    "gbr"
                ]
            )
        }

        public static func rpkiManifest() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-manifest",
                possibleExtensions: [
                    "mft"
                ]
            )
        }

        public static func rpkiPublication() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-publication"
            )
        }

        public static func rpkiRoa() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-roa",
                possibleExtensions: [
                    "roa"
                ]
            )
        }

        public static func rpkiSignedTal() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-signed-tal"
            )
        }

        public static func rpkiUpdown() -> MediaType {
            .init(
                type: name,
                subtype: "rpki-updown"
            )
        }

        public static func rsMetadataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rs-metadata",
                    suffix: "xml"
                )
            )
        }

        public static func rsdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rsd",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rsd"
                ]
            )
        }

        public static func rssXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "rss",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rss"
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

        public static func samlassertionXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "samlassertion",
                    suffix: "xml"
                )
            )
        }

        public static func samlmetadataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "samlmetadata",
                    suffix: "xml"
                )
            )
        }

        public static func sarifJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sarif",
                    suffix: "json"
                )
            )
        }

        public static func sarifExternalPropertiesJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sarif-external-properties",
                    suffix: "json"
                )
            )
        }

        public static func sbe() -> MediaType {
            .init(
                type: name,
                subtype: "sbe"
            )
        }

        public static func sbmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sbml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "sbml"
                ]
            )
        }

        public static func scaipXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "scaip",
                    suffix: "xml"
                )
            )
        }

        public static func scimJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "scim",
                    suffix: "json"
                )
            )
        }

        public static func scittReceiptCose() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "scitt-receipt",
                    suffix: "cose"
                )
            )
        }

        public static func scittStatementCose() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "scitt-statement",
                    suffix: "cose"
                )
            )
        }

        public static func scvpCvRequest() -> MediaType {
            .init(
                type: name,
                subtype: "scvp-cv-request",
                possibleExtensions: [
                    "scq"
                ]
            )
        }

        public static func scvpCvResponse() -> MediaType {
            .init(
                type: name,
                subtype: "scvp-cv-response",
                possibleExtensions: [
                    "scs"
                ]
            )
        }

        public static func scvpVpRequest() -> MediaType {
            .init(
                type: name,
                subtype: "scvp-vp-request",
                possibleExtensions: [
                    "spq"
                ]
            )
        }

        public static func scvpVpResponse() -> MediaType {
            .init(
                type: name,
                subtype: "scvp-vp-response",
                possibleExtensions: [
                    "spp"
                ]
            )
        }

        public static func sdJwt() -> MediaType {
            .init(
                type: name,
                subtype: "sd-jwt"
            )
        }

        public static func sdJwtJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sd-jwt",
                    suffix: "json"
                )
            )
        }

        public static func sdfJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sdf",
                    suffix: "json"
                )
            )
        }

        public static func sdp() -> MediaType {
            .init(
                type: name,
                subtype: "sdp",
                possibleExtensions: [
                    "sdp"
                ]
            )
        }

        public static func seceventJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "secevent",
                    suffix: "jwt"
                )
            )
        }

        public static func senmlCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "senml",
                    suffix: "cbor"
                )
            )
        }

        public static func senmlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "senml",
                    suffix: "json"
                )
            )
        }

        public static func senmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "senml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "senmlx"
                ]
            )
        }

        public static func senmlEtchCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "senml-etch",
                    suffix: "cbor"
                )
            )
        }

        public static func senmlEtchJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "senml-etch",
                    suffix: "json"
                )
            )
        }

        public static func senmlExi() -> MediaType {
            .init(
                type: name,
                subtype: "senml-exi"
            )
        }

        public static func sensmlCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sensml",
                    suffix: "cbor"
                )
            )
        }

        public static func sensmlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sensml",
                    suffix: "json"
                )
            )
        }

        public static func sensmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sensml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "sensmlx"
                ]
            )
        }

        public static func sensmlExi() -> MediaType {
            .init(
                type: name,
                subtype: "sensml-exi"
            )
        }

        public static func sepXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sep",
                    suffix: "xml"
                )
            )
        }

        public static func sepExi() -> MediaType {
            .init(
                type: name,
                subtype: "sep-exi"
            )
        }

        public static func sessionInfo() -> MediaType {
            .init(
                type: name,
                subtype: "session-info"
            )
        }

        public static func setPayment() -> MediaType {
            .init(
                type: name,
                subtype: "set-payment"
            )
        }

        public static func setPaymentInitiation() -> MediaType {
            .init(
                type: name,
                subtype: "set-payment-initiation",
                possibleExtensions: [
                    "setpay"
                ]
            )
        }

        public static func setRegistration() -> MediaType {
            .init(
                type: name,
                subtype: "set-registration"
            )
        }

        public static func setRegistrationInitiation() -> MediaType {
            .init(
                type: name,
                subtype: "set-registration-initiation",
                possibleExtensions: [
                    "setreg"
                ]
            )
        }

        public static func sgml() -> MediaType {
            .init(
                type: name,
                subtype: "sgml"
            )
        }

        public static func sgmlOpenCatalog() -> MediaType {
            .init(
                type: name,
                subtype: "sgml-open-catalog"
            )
        }

        public static func shfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "shf",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "shf"
                ]
            )
        }

        public static func sieve() -> MediaType {
            .init(
                type: name,
                subtype: "sieve",
                possibleExtensions: [
                    "siv",
                    "sieve",
                ]
            )
        }

        public static func simpleFilterXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "simple-filter",
                    suffix: "xml"
                )
            )
        }

        public static func simpleMessageSummary() -> MediaType {
            .init(
                type: name,
                subtype: "simple-message-summary"
            )
        }

        public static func simplesymbolcontainer() -> MediaType {
            .init(
                type: name,
                subtype: "simplesymbolcontainer"
            )
        }

        public static func sipc() -> MediaType {
            .init(
                type: name,
                subtype: "sipc"
            )
        }

        public static func slate() -> MediaType {
            .init(
                type: name,
                subtype: "slate"
            )
        }

        public static func smil() -> MediaType {
            .init(
                type: name,
                subtype: "smil"
            )
        }

        public static func smilXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "smil",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "smi",
                    "smil",
                ]
            )
        }

        public static func smpte336m() -> MediaType {
            .init(
                type: name,
                subtype: "smpte336m"
            )
        }

        public static func soapFastinfoset() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "soap",
                    suffix: "fastinfoset"
                )
            )
        }

        public static func soapXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "soap",
                    suffix: "xml"
                )
            )
        }

        public static func sparqlQuery() -> MediaType {
            .init(
                type: name,
                subtype: "sparql-query",
                possibleExtensions: [
                    "rq"
                ]
            )
        }

        public static func sparqlResultsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sparql-results",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "srx"
                ]
            )
        }

        public static func spdxJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "spdx",
                    suffix: "json"
                )
            )
        }

        public static func spiritsEventXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "spirits-event",
                    suffix: "xml"
                )
            )
        }

        public static func sql() -> MediaType {
            .init(
                type: name,
                subtype: "sql",
                possibleExtensions: [
                    "sql"
                ]
            )
        }

        public static func srgs() -> MediaType {
            .init(
                type: name,
                subtype: "srgs",
                possibleExtensions: [
                    "gram"
                ]
            )
        }

        public static func srgsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "srgs",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "grxml"
                ]
            )
        }

        public static func sruXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "sru",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "sru"
                ]
            )
        }

        public static func ssdlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ssdl",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ssdl"
                ]
            )
        }

        public static func sslkeylogfile() -> MediaType {
            .init(
                type: name,
                subtype: "sslkeylogfile"
            )
        }

        public static func ssmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ssml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ssml"
                ]
            )
        }

        public static func st211041() -> MediaType {
            .init(
                type: name,
                subtype: "st2110-41"
            )
        }

        public static func stixJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "stix",
                    suffix: "json"
                )
            )
        }

        public static func stratum() -> MediaType {
            .init(
                type: name,
                subtype: "stratum"
            )
        }

        public static func suitEnvelopeCose() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "suit-envelope",
                    suffix: "cose"
                )
            )
        }

        public static func swidCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "swid",
                    suffix: "cbor"
                )
            )
        }

        public static func swidXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "swid",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "swidtag"
                ]
            )
        }

        public static func tampApexUpdate() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-apex-update"
            )
        }

        public static func tampApexUpdateConfirm() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-apex-update-confirm"
            )
        }

        public static func tampCommunityUpdate() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-community-update"
            )
        }

        public static func tampCommunityUpdateConfirm() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-community-update-confirm"
            )
        }

        public static func tampError() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-error"
            )
        }

        public static func tampSequenceAdjust() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-sequence-adjust"
            )
        }

        public static func tampSequenceAdjustConfirm() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-sequence-adjust-confirm"
            )
        }

        public static func tampStatusQuery() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-status-query"
            )
        }

        public static func tampStatusResponse() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-status-response"
            )
        }

        public static func tampUpdate() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-update"
            )
        }

        public static func tampUpdateConfirm() -> MediaType {
            .init(
                type: name,
                subtype: "tamp-update-confirm"
            )
        }

        public static func tar() -> MediaType {
            .init(
                type: name,
                subtype: "tar"
            )
        }

        public static func taxiiJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "taxii",
                    suffix: "json"
                )
            )
        }

        public static func tdJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "td",
                    suffix: "json"
                )
            )
        }

        public static func teiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "tei",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "tei",
                    "teicorpus",
                ]
            )
        }

        public static func tetraIsi() -> MediaType {
            .init(
                type: name,
                subtype: "tetra_isi"
            )
        }

        public static func texinfo() -> MediaType {
            .init(
                type: name,
                subtype: "texinfo"
            )
        }

        public static func thraudXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "thraud",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "tfi"
                ]
            )
        }

        public static func timestampQuery() -> MediaType {
            .init(
                type: name,
                subtype: "timestamp-query"
            )
        }

        public static func timestampReply() -> MediaType {
            .init(
                type: name,
                subtype: "timestamp-reply"
            )
        }

        public static func timestampedData() -> MediaType {
            .init(
                type: name,
                subtype: "timestamped-data",
                possibleExtensions: [
                    "tsd"
                ]
            )
        }

        public static func tlsrptGzip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "tlsrpt",
                    suffix: "gzip"
                )
            )
        }

        public static func tlsrptJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "tlsrpt",
                    suffix: "json"
                )
            )
        }

        public static func tmJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "tm",
                    suffix: "json"
                )
            )
        }

        public static func tnauthlist() -> MediaType {
            .init(
                type: name,
                subtype: "tnauthlist"
            )
        }

        public static func tocCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "toc",
                    suffix: "cbor"
                )
            )
        }

        public static func tokenIntrospectionJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "token-introspection",
                    suffix: "jwt"
                )
            )
        }

        public static func toml() -> MediaType {
            .init(
                type: name,
                subtype: "toml",
                possibleExtensions: [
                    "toml"
                ]
            )
        }

        public static func trickleIceSdpfrag() -> MediaType {
            .init(
                type: name,
                subtype: "trickle-ice-sdpfrag"
            )
        }

        public static func trig() -> MediaType {
            .init(
                type: name,
                subtype: "trig",
                possibleExtensions: [
                    "trig"
                ]
            )
        }

        public static func trustChainJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "trust-chain",
                    suffix: "json"
                )
            )
        }

        public static func trustMarkJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "trust-mark",
                    suffix: "jwt"
                )
            )
        }

        public static func trustMarkDelegationJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "trust-mark-delegation",
                    suffix: "jwt"
                )
            )
        }

        public static func ttmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ttml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ttml"
                ]
            )
        }

        public static func tveTrigger() -> MediaType {
            .init(
                type: name,
                subtype: "tve-trigger"
            )
        }

        public static func tzif() -> MediaType {
            .init(
                type: name,
                subtype: "tzif"
            )
        }

        public static func tzifLeap() -> MediaType {
            .init(
                type: name,
                subtype: "tzif-leap"
            )
        }

        public static func ubjson() -> MediaType {
            .init(
                type: name,
                subtype: "ubjson",
                possibleExtensions: [
                    "ubj"
                ]
            )
        }

        public static func uccsCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "uccs",
                    suffix: "cbor"
                )
            )
        }

        public static func ujcsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "ujcs",
                    suffix: "json"
                )
            )
        }

        public static func ulpfec() -> MediaType {
            .init(
                type: name,
                subtype: "ulpfec"
            )
        }

        public static func urcGrpsheetXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "urc-grpsheet",
                    suffix: "xml"
                )
            )
        }

        public static func urcRessheetXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "urc-ressheet",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "rsheet"
                ]
            )
        }

        public static func urcTargetdescXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "urc-targetdesc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "td"
                ]
            )
        }

        public static func urcUisocketdescXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "urc-uisocketdesc",
                    suffix: "xml"
                )
            )
        }

        public static func vc() -> MediaType {
            .init(
                type: name,
                subtype: "vc"
            )
        }

        public static func vcCose() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vc",
                    suffix: "cose"
                )
            )
        }

        public static func vcJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vc",
                    suffix: "jwt"
                )
            )
        }

        public static func vcardJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vcard",
                    suffix: "json"
                )
            )
        }

        public static func vcardXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vcard",
                    suffix: "xml"
                )
            )
        }

        public static func vecXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vec",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "vec"
                ]
            )
        }

        public static func vecPackageGzip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vec-package",
                    suffix: "gzip"
                )
            )
        }

        public static func vecPackageZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vec-package",
                    suffix: "zip"
                )
            )
        }

        public static func vemmi() -> MediaType {
            .init(
                type: name,
                subtype: "vemmi"
            )
        }

        public static func vividenceScriptfile() -> MediaType {
            .init(
                type: name,
                subtype: "vividence.scriptfile"
            )
        }

        public static func vnd1000mindsDecisionModelXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.1000minds.decision-model",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "1km"
                ]
            )
        }

        public static func vnd1ob() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.1ob"
            )
        }

        public static func vnd3gppProseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp-prose",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppProsePc3aXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp-prose-pc3a",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppProsePc3achXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp-prose-pc3ach",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppProsePc3chXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp-prose-pc3ch",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppProsePc8Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp-prose-pc8",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppV2xLocalServiceInformation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp-v2x-local-service-information"
            )
        }

        public static func vnd3gpp5gnas() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.5gnas"
            )
        }

        public static func vnd3gpp5gsa2x() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.5gsa2x"
            )
        }

        public static func vnd3gpp5gsa2xLocalServiceInformation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.5gsa2x-local-service-information"
            )
        }

        public static func vnd3gpp5gsv2x() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.5gsv2x"
            )
        }

        public static func vnd3gpp5gsv2xLocalServiceInformation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.5gsv2x-local-service-information"
            )
        }

        public static func vnd3gppAccessTransferEventsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.access-transfer-events",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppBsfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.bsf",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppCrsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.crs",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppCurrentLocationDiscoveryXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.current-location-discovery",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppGmopXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.gmop",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppGtpc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.gtpc"
            )
        }

        public static func vnd3gppInterworkingData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.interworking-data"
            )
        }

        public static func vnd3gppLpp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.lpp"
            )
        }

        public static func vnd3gppMcSignallingEar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.mc-signalling-ear"
            )
        }

        public static func vnd3gppMcdataAffiliationCommandXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-affiliation-command",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcdataInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcdataMsgstoreCtrlRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-msgstore-ctrl-request",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcdataPayload() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.mcdata-payload"
            )
        }

        public static func vnd3gppMcdataRegroupXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-regroup",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcdataServiceConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-service-config",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcdataSignalling() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.mcdata-signalling"
            )
        }

        public static func vnd3gppMcdataUeConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-ue-config",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcdataUserProfileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcdata-user-profile",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttAffiliationCommandXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-affiliation-command",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttFloorRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-floor-request",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttLocationInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-location-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttMbmsUsageInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-mbms-usage-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttRegroupXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-regroup",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttServiceConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-service-config",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttSignedXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-signed",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttUeConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-ue-config",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttUeInitConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-ue-init-config",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcpttUserProfileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcptt-user-profile",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcvideoAffiliationCommandXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-affiliation-command",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcvideoInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcvideoLocationInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-location-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcvideoMbmsUsageInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-mbms-usage-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcvideoRegroupXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-regroup",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcvideoServiceConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-service-config",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcvideoTransmissionRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-transmission-request",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcvideoUeConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-ue-config",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMcvideoUserProfileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mcvideo-user-profile",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppMidCallXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.mid-call",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppNgap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.ngap"
            )
        }

        public static func vnd3gppPfcp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.pfcp"
            )
        }

        public static func vnd3gppPicBwLarge() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.pic-bw-large",
                possibleExtensions: [
                    "plb"
                ]
            )
        }

        public static func vnd3gppPicBwSmall() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.pic-bw-small",
                possibleExtensions: [
                    "psb"
                ]
            )
        }

        public static func vnd3gppPicBwVar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.pic-bw-var",
                possibleExtensions: [
                    "pvb"
                ]
            )
        }

        public static func vnd3gppPinappInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.pinapp-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppS1ap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.s1ap"
            )
        }

        public static func vnd3gppSealAppCommRequirementsInfoXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-app-comm-requirements-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSealDataDeliveryInfoCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-data-delivery-info",
                    suffix: "cbor"
                )
            )
        }

        public static func vnd3gppSealDataDeliveryInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-data-delivery-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSealGroupDocXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-group-doc",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSealInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSealLocationInfoCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-location-info",
                    suffix: "cbor"
                )
            )
        }

        public static func vnd3gppSealLocationInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-location-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSealMbmsUsageInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-mbms-usage-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSealMbsUsageInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-mbs-usage-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSealNetworkQosManagementInfoXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-network-qos-management-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSealNetworkResourceInfoCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-network-resource-info",
                    suffix: "cbor"
                )
            )
        }

        public static func vnd3gppSealUeConfigInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-ue-config-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSealUnicastInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-unicast-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSealUserProfileInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.seal-user-profile-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSms() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.sms"
            )
        }

        public static func vnd3gppSmsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.sms",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSrvccExtXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.srvcc-ext",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppSrvccInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.srvcc-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppStateAndEventInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.state-and-event-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppUssdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.ussd",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gppV2x() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp.v2x"
            )
        }

        public static func vnd3gppVaeInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp.vae-info",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gpp2BcmcsinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.3gpp2.bcmcsinfo",
                    suffix: "xml"
                )
            )
        }

        public static func vnd3gpp2Sms() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp2.sms"
            )
        }

        public static func vnd3gpp2Tcap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3gpp2.tcap",
                possibleExtensions: [
                    "tcap"
                ]
            )
        }

        public static func vnd3lightssoftwareImagescal() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3lightssoftware.imagescal"
            )
        }

        public static func vnd3mPostItNotes() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.3m.post-it-notes",
                possibleExtensions: [
                    "pwn"
                ]
            )
        }

        public static func vndAccpacSimplyAso() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.accpac.simply.aso",
                possibleExtensions: [
                    "aso"
                ]
            )
        }

        public static func vndAccpacSimplyImp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.accpac.simply.imp",
                possibleExtensions: [
                    "imp"
                ]
            )
        }

        public static func vndAcmAddressxferJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.acm.addressxfer",
                    suffix: "json"
                )
            )
        }

        public static func vndAcmChatbotJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.acm.chatbot",
                    suffix: "json"
                )
            )
        }

        public static func vndAcucobol() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.acucobol",
                possibleExtensions: [
                    "acu"
                ]
            )
        }

        public static func vndAcucorp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.acucorp",
                possibleExtensions: [
                    "atc",
                    "acutc",
                ]
            )
        }

        public static func vndAdobeAirApplicationInstallerPackageZip()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.adobe.air-application-installer-package",
                    suffix: "zip"
                ),
                possibleExtensions: [
                    "air"
                ]
            )
        }

        public static func vndAdobeFlashMovie() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.flash.movie"
            )
        }

        public static func vndAdobeFormscentralFcdt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.formscentral.fcdt",
                possibleExtensions: [
                    "fcdt"
                ]
            )
        }

        public static func vndAdobeFxp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.fxp",
                possibleExtensions: [
                    "fxp",
                    "fxpl",
                ]
            )
        }

        public static func vndAdobePartialUpload() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.partial-upload"
            )
        }

        public static func vndAdobeXdpXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.adobe.xdp",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xdp"
                ]
            )
        }

        public static func vndAdobeXfdf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.adobe.xfdf",
                possibleExtensions: [
                    "xfdf"
                ]
            )
        }

        public static func vndAetherImp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.aether.imp"
            )
        }

        public static func vndAfpcAfplinedata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.afplinedata"
            )
        }

        public static func vndAfpcAfplinedataPagedef() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.afplinedata-pagedef"
            )
        }

        public static func vndAfpcCmocaCmresource() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.cmoca-cmresource"
            )
        }

        public static func vndAfpcFocaCharset() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.foca-charset"
            )
        }

        public static func vndAfpcFocaCodedfont() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.foca-codedfont"
            )
        }

        public static func vndAfpcFocaCodepage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.foca-codepage"
            )
        }

        public static func vndAfpcModca() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca"
            )
        }

        public static func vndAfpcModcaCmtable() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-cmtable"
            )
        }

        public static func vndAfpcModcaFormdef() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-formdef"
            )
        }

        public static func vndAfpcModcaMediummap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-mediummap"
            )
        }

        public static func vndAfpcModcaObjectcontainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-objectcontainer"
            )
        }

        public static func vndAfpcModcaOverlay() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-overlay"
            )
        }

        public static func vndAfpcModcaPagesegment() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.afpc.modca-pagesegment"
            )
        }

        public static func vndAge() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.age",
                possibleExtensions: [
                    "age"
                ]
            )
        }

        public static func vndAhBarcode() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ah-barcode"
            )
        }

        public static func vndAheadSpace() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ahead.space",
                possibleExtensions: [
                    "ahead"
                ]
            )
        }

        public static func vndAirzipFilesecureAzf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.airzip.filesecure.azf",
                possibleExtensions: [
                    "azf"
                ]
            )
        }

        public static func vndAirzipFilesecureAzs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.airzip.filesecure.azs",
                possibleExtensions: [
                    "azs"
                ]
            )
        }

        public static func vndAmadeusJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.amadeus",
                    suffix: "json"
                )
            )
        }

        public static func vndAmazonEbook() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.amazon.ebook",
                possibleExtensions: [
                    "azw"
                ]
            )
        }

        public static func vndAmazonMobi8Ebook() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.amazon.mobi8-ebook"
            )
        }

        public static func vndAmericandynamicsAcc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.americandynamics.acc",
                possibleExtensions: [
                    "acc"
                ]
            )
        }

        public static func vndAmigaAmi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.amiga.ami",
                possibleExtensions: [
                    "ami"
                ]
            )
        }

        public static func vndAmundsenMazeXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.amundsen.maze",
                    suffix: "xml"
                )
            )
        }

        public static func vndAndroidOta() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.android.ota"
            )
        }

        public static func vndAndroidPackageArchive() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.android.package-archive",
                possibleExtensions: [
                    "apk"
                ]
            )
        }

        public static func vndAnki() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.anki"
            )
        }

        public static func vndAnserWebCertificateIssueInitiation() -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.anser-web-certificate-issue-initiation",
                possibleExtensions: [
                    "cii"
                ]
            )
        }

        public static func vndAnserWebFundsTransferInitiation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.anser-web-funds-transfer-initiation",
                possibleExtensions: [
                    "fti"
                ]
            )
        }

        public static func vndAntixGameComponent() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.antix.game-component",
                possibleExtensions: [
                    "atx"
                ]
            )
        }

        public static func vndApacheArrowFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.arrow.file"
            )
        }

        public static func vndApacheArrowStream() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.arrow.stream"
            )
        }

        public static func vndApacheParquet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.parquet"
            )
        }

        public static func vndApacheThriftBinary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.thrift.binary"
            )
        }

        public static func vndApacheThriftCompact() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.thrift.compact"
            )
        }

        public static func vndApacheThriftJson() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apache.thrift.json"
            )
        }

        public static func vndApexlang() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apexlang"
            )
        }

        public static func vndApiJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.api",
                    suffix: "json"
                )
            )
        }

        public static func vndAplextorWarrpJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.aplextor.warrp",
                    suffix: "json"
                )
            )
        }

        public static func vndApothekendeReservationJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.apothekende.reservation",
                    suffix: "json"
                )
            )
        }

        public static func vndAppleInstallerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.apple.installer",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mpkg"
                ]
            )
        }

        public static func vndAppleKeynote() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apple.keynote",
                possibleExtensions: [
                    "key"
                ]
            )
        }

        public static func vndAppleMpegurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apple.mpegurl",
                possibleExtensions: [
                    "m3u8"
                ]
            )
        }

        public static func vndAppleNumbers() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apple.numbers",
                possibleExtensions: [
                    "numbers"
                ]
            )
        }

        public static func vndApplePages() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apple.pages",
                possibleExtensions: [
                    "pages"
                ]
            )
        }

        public static func vndApplePkpass() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.apple.pkpass",
                possibleExtensions: [
                    "pkpass"
                ]
            )
        }

        public static func vndArastraSwi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.arastra.swi"
            )
        }

        public static func vndAristanetworksSwi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.aristanetworks.swi",
                possibleExtensions: [
                    "swi"
                ]
            )
        }

        public static func vndArtisanJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.artisan",
                    suffix: "json"
                )
            )
        }

        public static func vndArtsquare() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.artsquare"
            )
        }

        public static func vndAs207960VasConfigJer() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.as207960.vas.config",
                    suffix: "jer"
                )
            )
        }

        public static func vndAs207960VasConfigUper() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.as207960.vas.config",
                    suffix: "uper"
                )
            )
        }

        public static func vndAs207960VasTapJer() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.as207960.vas.tap",
                    suffix: "jer"
                )
            )
        }

        public static func vndAs207960VasTapUper() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.as207960.vas.tap",
                    suffix: "uper"
                )
            )
        }

        public static func vndAstraeaSoftwareIota() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.astraea-software.iota",
                possibleExtensions: [
                    "iota"
                ]
            )
        }

        public static func vndAudiograph() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.audiograph",
                possibleExtensions: [
                    "aep"
                ]
            )
        }

        public static func vndAutodeskFbx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.autodesk.fbx",
                possibleExtensions: [
                    "fbx"
                ]
            )
        }

        public static func vndAutopackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.autopackage"
            )
        }

        public static func vndAvalonJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.avalon",
                    suffix: "json"
                )
            )
        }

        public static func vndAvistarXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.avistar",
                    suffix: "xml"
                )
            )
        }

        public static func vndBalsamiqBmmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.balsamiq.bmml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "bmml"
                ]
            )
        }

        public static func vndBalsamiqBmpr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.balsamiq.bmpr"
            )
        }

        public static func vndBananaAccounting() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.banana-accounting"
            )
        }

        public static func vndBbfUspError() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bbf.usp.error"
            )
        }

        public static func vndBbfUspMsg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bbf.usp.msg"
            )
        }

        public static func vndBbfUspMsgJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.bbf.usp.msg",
                    suffix: "json"
                )
            )
        }

        public static func vndBekitzurStechJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.bekitzur-stech",
                    suffix: "json"
                )
            )
        }

        public static func vndBelightsoftLhzdZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.belightsoft.lhzd",
                    suffix: "zip"
                )
            )
        }

        public static func vndBelightsoftLhzlZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.belightsoft.lhzl",
                    suffix: "zip"
                )
            )
        }

        public static func vndBintMedContent() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bint.med-content"
            )
        }

        public static func vndBiopaxRdfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.biopax.rdf",
                    suffix: "xml"
                )
            )
        }

        public static func vndBlinkIdbValueWrapper() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.blink-idb-value-wrapper"
            )
        }

        public static func vndBlueiceMultipass() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.blueice.multipass",
                possibleExtensions: [
                    "mpm"
                ]
            )
        }

        public static func vndBluetoothEpOob() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bluetooth.ep.oob"
            )
        }

        public static func vndBluetoothLeOob() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bluetooth.le.oob"
            )
        }

        public static func vndBmi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bmi",
                possibleExtensions: [
                    "bmi"
                ]
            )
        }

        public static func vndBpf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bpf"
            )
        }

        public static func vndBpf3() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bpf3"
            )
        }

        public static func vndBusinessobjects() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.businessobjects",
                possibleExtensions: [
                    "rep"
                ]
            )
        }

        public static func vndByuUapiJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.byu.uapi",
                    suffix: "json"
                )
            )
        }

        public static func vndBzip3() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.bzip3"
            )
        }

        public static func vndC3vocScheduleXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.c3voc.schedule",
                    suffix: "xml"
                )
            )
        }

        public static func vndCabJscript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cab-jscript"
            )
        }

        public static func vndCanonCpdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.canon-cpdl"
            )
        }

        public static func vndCanonLips() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.canon-lips"
            )
        }

        public static func vndCapasystemsPgJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.capasystems-pg",
                    suffix: "json"
                )
            )
        }

        public static func vndCel() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cel"
            )
        }

        public static func vndCendioThinlincClientconf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cendio.thinlinc.clientconf"
            )
        }

        public static func vndCenturySystemsTcpStream() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.century-systems.tcp_stream"
            )
        }

        public static func vndChemdrawXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.chemdraw",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "cdxml"
                ]
            )
        }

        public static func vndChessPgn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.chess-pgn"
            )
        }

        public static func vndChipnutsKaraokeMmd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.chipnuts.karaoke-mmd",
                possibleExtensions: [
                    "mmd"
                ]
            )
        }

        public static func vndCiedi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ciedi"
            )
        }

        public static func vndCinderella() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cinderella",
                possibleExtensions: [
                    "cdy"
                ]
            )
        }

        public static func vndCirpackIsdnExt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cirpack.isdn-ext"
            )
        }

        public static func vndCitationstylesStyleXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.citationstyles.style",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "csl"
                ]
            )
        }

        public static func vndClaymore() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.claymore",
                possibleExtensions: [
                    "cla"
                ]
            )
        }

        public static func vndCloantoRp9() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cloanto.rp9",
                possibleExtensions: [
                    "rp9"
                ]
            )
        }

        public static func vndClonkC4group() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.clonk.c4group",
                possibleExtensions: [
                    "c4g",
                    "c4d",
                    "c4f",
                    "c4p",
                    "c4u",
                ]
            )
        }

        public static func vndCluetrustCartomobileConfig() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cluetrust.cartomobile-config",
                possibleExtensions: [
                    "c11amc"
                ]
            )
        }

        public static func vndCluetrustCartomobileConfigPkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cluetrust.cartomobile-config-pkg",
                possibleExtensions: [
                    "c11amz"
                ]
            )
        }

        public static func vndCncfHelmChartContentV1TarGzip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cncf.helm.chart.content.v1.tar",
                    suffix: "gzip"
                )
            )
        }

        public static func vndCncfHelmChartProvenanceV1Prov() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cncf.helm.chart.provenance.v1.prov"
            )
        }

        public static func vndCncfHelmConfigV1Json() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cncf.helm.config.v1",
                    suffix: "json"
                )
            )
        }

        public static func vndCoffeescript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.coffeescript"
            )
        }

        public static func vndCollabioXodocumentsDocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.document"
            )
        }

        public static func vndCollabioXodocumentsDocumentTemplate() -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.document-template"
            )
        }

        public static func vndCollabioXodocumentsPresentation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.presentation"
            )
        }

        public static func vndCollabioXodocumentsPresentationTemplate()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.presentation-template"
            )
        }

        public static func vndCollabioXodocumentsSpreadsheet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.spreadsheet"
            )
        }

        public static func vndCollabioXodocumentsSpreadsheetTemplate()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.collabio.xodocuments.spreadsheet-template"
            )
        }

        public static func vndCollectionJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.collection",
                    suffix: "json"
                )
            )
        }

        public static func vndCollectionDocJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.collection.doc",
                    suffix: "json"
                )
            )
        }

        public static func vndCollectionNextJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.collection.next",
                    suffix: "json"
                )
            )
        }

        public static func vndComicbookZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.comicbook",
                    suffix: "zip"
                )
            )
        }

        public static func vndComicbookRar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.comicbook-rar"
            )
        }

        public static func vndCommerceBattelle() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.commerce-battelle"
            )
        }

        public static func vndCommonspace() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.commonspace",
                possibleExtensions: [
                    "csp"
                ]
            )
        }

        public static func vndContactCmsg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.contact.cmsg",
                possibleExtensions: [
                    "cdbcmsg"
                ]
            )
        }

        public static func vndCoreosIgnitionJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.coreos.ignition",
                    suffix: "json"
                )
            )
        }

        public static func vndCosmocaller() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cosmocaller",
                possibleExtensions: [
                    "cmc"
                ]
            )
        }

        public static func vndCrickClicker() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crick.clicker",
                possibleExtensions: [
                    "clkx"
                ]
            )
        }

        public static func vndCrickClickerKeyboard() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crick.clicker.keyboard",
                possibleExtensions: [
                    "clkk"
                ]
            )
        }

        public static func vndCrickClickerPalette() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crick.clicker.palette",
                possibleExtensions: [
                    "clkp"
                ]
            )
        }

        public static func vndCrickClickerTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crick.clicker.template",
                possibleExtensions: [
                    "clkt"
                ]
            )
        }

        public static func vndCrickClickerWordbank() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crick.clicker.wordbank",
                possibleExtensions: [
                    "clkw"
                ]
            )
        }

        public static func vndCriticaltoolsWbsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.criticaltools.wbs",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "wbs"
                ]
            )
        }

        public static func vndCryptiiPipeJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cryptii.pipe",
                    suffix: "json"
                )
            )
        }

        public static func vndCryptoShadeFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.crypto-shade-file"
            )
        }

        public static func vndCryptomatorEncrypted() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cryptomator.encrypted"
            )
        }

        public static func vndCryptomatorVault() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cryptomator.vault"
            )
        }

        public static func vndCtcPosml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ctc-posml",
                possibleExtensions: [
                    "pml"
                ]
            )
        }

        public static func vndCtctWsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ctct.ws",
                    suffix: "xml"
                )
            )
        }

        public static func vndCupsPdf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cups-pdf"
            )
        }

        public static func vndCupsPostscript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cups-postscript"
            )
        }

        public static func vndCupsPpd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cups-ppd",
                possibleExtensions: [
                    "ppd"
                ]
            )
        }

        public static func vndCupsRaster() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cups-raster"
            )
        }

        public static func vndCupsRaw() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cups-raw"
            )
        }

        public static func vndCurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl"
            )
        }

        public static func vndCurlCar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl.car",
                possibleExtensions: [
                    "car"
                ]
            )
        }

        public static func vndCurlPcurl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.curl.pcurl",
                possibleExtensions: [
                    "pcurl"
                ]
            )
        }

        public static func vndCyanDeanRootXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cyan.dean.root",
                    suffix: "xml"
                )
            )
        }

        public static func vndCybank() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.cybank"
            )
        }

        public static func vndCyclonedxJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cyclonedx",
                    suffix: "json"
                )
            )
        }

        public static func vndCyclonedxXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.cyclonedx",
                    suffix: "xml"
                )
            )
        }

        public static func vndD2lCoursepackage1p0Zip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.d2l.coursepackage1p0",
                    suffix: "zip"
                )
            )
        }

        public static func vndD3mDataset() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.d3m-dataset"
            )
        }

        public static func vndD3mProblem() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.d3m-problem"
            )
        }

        public static func vndDart() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dart",
                possibleExtensions: [
                    "dart"
                ]
            )
        }

        public static func vndDataVisionRdz() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.data-vision.rdz",
                possibleExtensions: [
                    "rdz"
                ]
            )
        }

        public static func vndDatalog() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.datalog"
            )
        }

        public static func vndDatapackageJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.datapackage",
                    suffix: "json"
                )
            )
        }

        public static func vndDataresourceJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dataresource",
                    suffix: "json"
                )
            )
        }

        public static func vndDbf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dbf",
                possibleExtensions: [
                    "dbf"
                ]
            )
        }

        public static func vndDcmpXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dcmp",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dcmp"
                ]
            )
        }

        public static func vndDebianBinaryPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.debian.binary-package"
            )
        }

        public static func vndDeceData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.data",
                possibleExtensions: [
                    "uvf",
                    "uvvf",
                    "uvd",
                    "uvvd",
                ]
            )
        }

        public static func vndDeceTtmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dece.ttml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "uvt",
                    "uvvt",
                ]
            )
        }

        public static func vndDeceUnspecified() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.unspecified",
                possibleExtensions: [
                    "uvx",
                    "uvvx",
                ]
            )
        }

        public static func vndDeceZip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dece.zip",
                possibleExtensions: [
                    "uvz",
                    "uvvz",
                ]
            )
        }

        public static func vndDenovoFcselayoutLink() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.denovo.fcselayout-link",
                possibleExtensions: [
                    "fe_launch"
                ]
            )
        }

        public static func vndDesmumeMovie() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.desmume.movie"
            )
        }

        public static func vndDirBiPlateDlNosuffix() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dir-bi.plate-dl-nosuffix"
            )
        }

        public static func vndDmDelegationXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dm.delegation",
                    suffix: "xml"
                )
            )
        }

        public static func vndDna() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dna",
                possibleExtensions: [
                    "dna"
                ]
            )
        }

        public static func vndDocumentJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.document",
                    suffix: "json"
                )
            )
        }

        public static func vndDolbyMlp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.mlp",
                possibleExtensions: [
                    "mlp"
                ]
            )
        }

        public static func vndDolbyMobile1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.mobile.1"
            )
        }

        public static func vndDolbyMobile2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dolby.mobile.2"
            )
        }

        public static func vndDoremirScorecloudBinaryDocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.doremir.scorecloud-binary-document"
            )
        }

        public static func vndDpgraph() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dpgraph",
                possibleExtensions: [
                    "dpg"
                ]
            )
        }

        public static func vndDreamfactory() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dreamfactory",
                possibleExtensions: [
                    "dfac"
                ]
            )
        }

        public static func vndDriveJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.drive",
                    suffix: "json"
                )
            )
        }

        public static func vndDsKeypoint() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ds-keypoint",
                possibleExtensions: [
                    "kpxx"
                ]
            )
        }

        public static func vndDtgLocal() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dtg.local"
            )
        }

        public static func vndDtgLocalFlash() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dtg.local.flash"
            )
        }

        public static func vndDtgLocalHtml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dtg.local.html"
            )
        }

        public static func vndDvbAit() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ait",
                possibleExtensions: [
                    "ait"
                ]
            )
        }

        public static func vndDvbDvbislXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.dvbisl",
                    suffix: "xml"
                )
            )
        }

        public static func vndDvbDvbj() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.dvbj"
            )
        }

        public static func vndDvbEsgcontainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.esgcontainer"
            )
        }

        public static func vndDvbIpdcdftnotifaccess() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ipdcdftnotifaccess"
            )
        }

        public static func vndDvbIpdcesgaccess() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ipdcesgaccess"
            )
        }

        public static func vndDvbIpdcesgaccess2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ipdcesgaccess2"
            )
        }

        public static func vndDvbIpdcesgpdd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ipdcesgpdd"
            )
        }

        public static func vndDvbIpdcroaming() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.ipdcroaming"
            )
        }

        public static func vndDvbIptvAlfecBase() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.iptv.alfec-base"
            )
        }

        public static func vndDvbIptvAlfecEnhancement() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.iptv.alfec-enhancement"
            )
        }

        public static func vndDvbNotifAggregateRootXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-aggregate-root",
                    suffix: "xml"
                )
            )
        }

        public static func vndDvbNotifContainerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-container",
                    suffix: "xml"
                )
            )
        }

        public static func vndDvbNotifGenericXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-generic",
                    suffix: "xml"
                )
            )
        }

        public static func vndDvbNotifIaMsglistXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-ia-msglist",
                    suffix: "xml"
                )
            )
        }

        public static func vndDvbNotifIaRegistrationRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-ia-registration-request",
                    suffix: "xml"
                )
            )
        }

        public static func vndDvbNotifIaRegistrationResponseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-ia-registration-response",
                    suffix: "xml"
                )
            )
        }

        public static func vndDvbNotifInitXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.dvb.notif-init",
                    suffix: "xml"
                )
            )
        }

        public static func vndDvbPfr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.pfr"
            )
        }

        public static func vndDvbService() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dvb.service",
                possibleExtensions: [
                    "svc"
                ]
            )
        }

        public static func vndDxr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dxr"
            )
        }

        public static func vndDynageo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dynageo",
                possibleExtensions: [
                    "geo"
                ]
            )
        }

        public static func vndDzr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.dzr"
            )
        }

        public static func vndEasykaraokeCdgdownload() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.easykaraoke.cdgdownload"
            )
        }

        public static func vndEcdisUpdate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecdis-update"
            )
        }

        public static func vndEcipRlp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecip.rlp"
            )
        }

        public static func vndEclipseDittoJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.eclipse.ditto",
                    suffix: "json"
                )
            )
        }

        public static func vndEcowinChart() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.chart",
                possibleExtensions: [
                    "mag"
                ]
            )
        }

        public static func vndEcowinFilerequest() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.filerequest"
            )
        }

        public static func vndEcowinFileupdate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.fileupdate"
            )
        }

        public static func vndEcowinSeries() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.series"
            )
        }

        public static func vndEcowinSeriesrequest() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.seriesrequest"
            )
        }

        public static func vndEcowinSeriesupdate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ecowin.seriesupdate"
            )
        }

        public static func vndEfiImg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.efi.img"
            )
        }

        public static func vndEfiIso() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.efi.iso"
            )
        }

        public static func vndElnZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.eln",
                    suffix: "zip"
                )
            )
        }

        public static func vndEmclientAccessrequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.emclient.accessrequest",
                    suffix: "xml"
                )
            )
        }

        public static func vndEnliven() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.enliven",
                possibleExtensions: [
                    "nml"
                ]
            )
        }

        public static func vndEnphaseEnvoy() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.enphase.envoy"
            )
        }

        public static func vndEprintsDataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.eprints.data",
                    suffix: "xml"
                )
            )
        }

        public static func vndEpsonEsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.epson.esf",
                possibleExtensions: [
                    "esf"
                ]
            )
        }

        public static func vndEpsonMsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.epson.msf",
                possibleExtensions: [
                    "msf"
                ]
            )
        }

        public static func vndEpsonQuickanime() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.epson.quickanime",
                possibleExtensions: [
                    "qam"
                ]
            )
        }

        public static func vndEpsonSalt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.epson.salt",
                possibleExtensions: [
                    "slt"
                ]
            )
        }

        public static func vndEpsonSsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.epson.ssf",
                possibleExtensions: [
                    "ssf"
                ]
            )
        }

        public static func vndEricssonQuickcall() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ericsson.quickcall"
            )
        }

        public static func vndErofs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.erofs"
            )
        }

        public static func vndEspassEspassZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.espass-espass",
                    suffix: "zip"
                )
            )
        }

        public static func vndEszigno3Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.eszigno3",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "es3",
                    "et3",
                ]
            )
        }

        public static func vndEtsiAocXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.aoc",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiAsicEZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.asic-e",
                    suffix: "zip"
                )
            )
        }

        public static func vndEtsiAsicSZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.asic-s",
                    suffix: "zip"
                )
            )
        }

        public static func vndEtsiCugXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.cug",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiIptvcommandXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvcommand",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiIptvdiscoveryXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvdiscovery",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiIptvprofileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvprofile",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiIptvsadBcXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvsad-bc",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiIptvsadCodXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvsad-cod",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiIptvsadNpvrXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvsad-npvr",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiIptvserviceXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvservice",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiIptvsyncXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvsync",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiIptvueprofileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.iptvueprofile",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiMcidXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.mcid",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiMheg5() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.etsi.mheg5"
            )
        }

        public static func vndEtsiOverloadControlPolicyDatasetXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.overload-control-policy-dataset",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiPstnXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.pstn",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiSciXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.sci",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiSimservsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.simservs",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiTimestampToken() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.etsi.timestamp-token"
            )
        }

        public static func vndEtsiTslXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.etsi.tsl",
                    suffix: "xml"
                )
            )
        }

        public static func vndEtsiTslDer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.etsi.tsl.der"
            )
        }

        public static func vndEuKasparianCarJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.eu.kasparian.car",
                    suffix: "json"
                )
            )
        }

        public static func vndEudoraData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.eudora.data"
            )
        }

        public static func vndEvolvEcigProfile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.evolv.ecig.profile"
            )
        }

        public static func vndEvolvEcigSettings() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.evolv.ecig.settings"
            )
        }

        public static func vndEvolvEcigTheme() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.evolv.ecig.theme"
            )
        }

        public static func vndExstreamEmpowerZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.exstream-empower",
                    suffix: "zip"
                )
            )
        }

        public static func vndExstreamPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.exstream-package"
            )
        }

        public static func vndEzpixAlbum() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ezpix-album",
                possibleExtensions: [
                    "ez2"
                ]
            )
        }

        public static func vndEzpixPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ezpix-package",
                possibleExtensions: [
                    "ez3"
                ]
            )
        }

        public static func vndFSecureMobile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.f-secure.mobile"
            )
        }

        public static func vndFafYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.faf",
                    suffix: "yaml"
                )
            )
        }

        public static func vndFamilysearchGedcomZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.familysearch.gedcom",
                    suffix: "zip"
                )
            )
        }

        public static func vndFastcopyDiskImage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fastcopy-disk-image"
            )
        }

        public static func vndFdf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fdf",
                possibleExtensions: [
                    "fdf"
                ]
            )
        }

        public static func vndFdsnMseed() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fdsn.mseed",
                possibleExtensions: [
                    "mseed"
                ]
            )
        }

        public static func vndFdsnSeed() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fdsn.seed",
                possibleExtensions: [
                    "seed",
                    "dataless",
                ]
            )
        }

        public static func vndFdsnStationxmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.fdsn.stationxml",
                    suffix: "xml"
                )
            )
        }

        public static func vndFfsns() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ffsns"
            )
        }

        public static func vndFgb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fgb"
            )
        }

        public static func vndFiclabFlbZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ficlab.flb",
                    suffix: "zip"
                )
            )
        }

        public static func vndFilmitZfc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.filmit.zfc"
            )
        }

        public static func vndFints() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fints"
            )
        }

        public static func vndFiremonkeysCloudcell() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.firemonkeys.cloudcell"
            )
        }

        public static func vndFlographit() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.flographit",
                possibleExtensions: [
                    "gph"
                ]
            )
        }

        public static func vndFluxtimeClip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fluxtime.clip",
                possibleExtensions: [
                    "ftc"
                ]
            )
        }

        public static func vndFontFontforgeSfd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.font-fontforge-sfd"
            )
        }

        public static func vndFramemaker() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.framemaker",
                possibleExtensions: [
                    "fm",
                    "frame",
                    "maker",
                    "book",
                ]
            )
        }

        public static func vndFreelogComic() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.freelog.comic"
            )
        }

        public static func vndFrogansFnc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.frogans.fnc",
                possibleExtensions: [
                    "fnc"
                ]
            )
        }

        public static func vndFrogansLtf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.frogans.ltf",
                possibleExtensions: [
                    "ltf"
                ]
            )
        }

        public static func vndFscWeblaunch() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fsc.weblaunch",
                possibleExtensions: [
                    "fsc"
                ]
            )
        }

        public static func vndFujifilmFbDocuworks() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujifilm.fb.docuworks"
            )
        }

        public static func vndFujifilmFbDocuworksBinder() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujifilm.fb.docuworks.binder"
            )
        }

        public static func vndFujifilmFbDocuworksContainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujifilm.fb.docuworks.container"
            )
        }

        public static func vndFujifilmFbJfiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.fujifilm.fb.jfi",
                    suffix: "xml"
                )
            )
        }

        public static func vndFujitsuOasys() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujitsu.oasys",
                possibleExtensions: [
                    "oas"
                ]
            )
        }

        public static func vndFujitsuOasys2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujitsu.oasys2",
                possibleExtensions: [
                    "oa2"
                ]
            )
        }

        public static func vndFujitsuOasys3() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujitsu.oasys3",
                possibleExtensions: [
                    "oa3"
                ]
            )
        }

        public static func vndFujitsuOasysgp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujitsu.oasysgp",
                possibleExtensions: [
                    "fg5"
                ]
            )
        }

        public static func vndFujitsuOasysprs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujitsu.oasysprs",
                possibleExtensions: [
                    "bh2"
                ]
            )
        }

        public static func vndFujixeroxArtEx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.art-ex"
            )
        }

        public static func vndFujixeroxArt4() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.art4"
            )
        }

        public static func vndFujixeroxDdd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.ddd",
                possibleExtensions: [
                    "ddd"
                ]
            )
        }

        public static func vndFujixeroxDocuworks() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.docuworks",
                possibleExtensions: [
                    "xdw"
                ]
            )
        }

        public static func vndFujixeroxDocuworksBinder() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.docuworks.binder",
                possibleExtensions: [
                    "xbd"
                ]
            )
        }

        public static func vndFujixeroxDocuworksContainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.docuworks.container"
            )
        }

        public static func vndFujixeroxHbpl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fujixerox.hbpl"
            )
        }

        public static func vndFutMisnet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fut-misnet"
            )
        }

        public static func vndFutoinCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.futoin",
                    suffix: "cbor"
                )
            )
        }

        public static func vndFutoinJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.futoin",
                    suffix: "json"
                )
            )
        }

        public static func vndFuzzysheet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.fuzzysheet",
                possibleExtensions: [
                    "fzs"
                ]
            )
        }

        public static func vndG3pixG3fc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.g3pix.g3fc"
            )
        }

        public static func vndGa4ghPassportJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ga4gh.passport",
                    suffix: "jwt"
                )
            )
        }

        public static func vndGenomatixTuxedo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.genomatix.tuxedo",
                possibleExtensions: [
                    "txd"
                ]
            )
        }

        public static func vndGenozip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.genozip"
            )
        }

        public static func vndGenticsGrdJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gentics.grd",
                    suffix: "json"
                )
            )
        }

        public static func vndGentooCatmetadataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gentoo.catmetadata",
                    suffix: "xml"
                )
            )
        }

        public static func vndGentooEbuild() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gentoo.ebuild"
            )
        }

        public static func vndGentooEclass() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gentoo.eclass"
            )
        }

        public static func vndGentooGpkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gentoo.gpkg"
            )
        }

        public static func vndGentooManifest() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gentoo.manifest"
            )
        }

        public static func vndGentooPkgmetadataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gentoo.pkgmetadata",
                    suffix: "xml"
                )
            )
        }

        public static func vndGentooXpak() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gentoo.xpak"
            )
        }

        public static func vndGeoJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.geo",
                    suffix: "json"
                )
            )
        }

        public static func vndGeocubeXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.geocube",
                    suffix: "xml"
                )
            )
        }

        public static func vndGeogebraFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geogebra.file",
                possibleExtensions: [
                    "ggb"
                ]
            )
        }

        public static func vndGeogebraPinboard() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geogebra.pinboard"
            )
        }

        public static func vndGeogebraSlides() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geogebra.slides",
                possibleExtensions: [
                    "ggs"
                ]
            )
        }

        public static func vndGeogebraTool() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geogebra.tool",
                possibleExtensions: [
                    "ggt"
                ]
            )
        }

        public static func vndGeometryExplorer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geometry-explorer",
                possibleExtensions: [
                    "gex",
                    "gre",
                ]
            )
        }

        public static func vndGeonext() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geonext",
                possibleExtensions: [
                    "gxt"
                ]
            )
        }

        public static func vndGeoplan() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geoplan",
                possibleExtensions: [
                    "g2w"
                ]
            )
        }

        public static func vndGeospace() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.geospace",
                possibleExtensions: [
                    "g3w"
                ]
            )
        }

        public static func vndGerber() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gerber"
            )
        }

        public static func vndGlobalplatformCardContentMgt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.globalplatform.card-content-mgt"
            )
        }

        public static func vndGlobalplatformCardContentMgtResponse()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.globalplatform.card-content-mgt-response"
            )
        }

        public static func vndGmx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gmx",
                possibleExtensions: [
                    "gmx"
                ]
            )
        }

        public static func vndGnuTalerExchangeJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gnu.taler.exchange",
                    suffix: "json"
                )
            )
        }

        public static func vndGnuTalerMerchantJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gnu.taler.merchant",
                    suffix: "json"
                )
            )
        }

        public static func vndGoogleAppsAudio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.audio"
            )
        }

        public static func vndGoogleAppsDocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.document",
                possibleExtensions: [
                    "gdoc"
                ]
            )
        }

        public static func vndGoogleAppsDrawing() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.drawing",
                possibleExtensions: [
                    "gdraw"
                ]
            )
        }

        public static func vndGoogleAppsDriveSdk() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.drive-sdk"
            )
        }

        public static func vndGoogleAppsFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.file"
            )
        }

        public static func vndGoogleAppsFolder() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.folder"
            )
        }

        public static func vndGoogleAppsForm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.form",
                possibleExtensions: [
                    "gform"
                ]
            )
        }

        public static func vndGoogleAppsFusiontable() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.fusiontable"
            )
        }

        public static func vndGoogleAppsJam() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.jam",
                possibleExtensions: [
                    "gjam"
                ]
            )
        }

        public static func vndGoogleAppsMailLayout() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.mail-layout"
            )
        }

        public static func vndGoogleAppsMap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.map",
                possibleExtensions: [
                    "gmap"
                ]
            )
        }

        public static func vndGoogleAppsPhoto() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.photo"
            )
        }

        public static func vndGoogleAppsPresentation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.presentation",
                possibleExtensions: [
                    "gslides"
                ]
            )
        }

        public static func vndGoogleAppsScript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.script",
                possibleExtensions: [
                    "gscript"
                ]
            )
        }

        public static func vndGoogleAppsShortcut() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.shortcut"
            )
        }

        public static func vndGoogleAppsSite() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.site",
                possibleExtensions: [
                    "gsite"
                ]
            )
        }

        public static func vndGoogleAppsSpreadsheet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.spreadsheet",
                possibleExtensions: [
                    "gsheet"
                ]
            )
        }

        public static func vndGoogleAppsUnknown() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.unknown"
            )
        }

        public static func vndGoogleAppsVideo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-apps.video"
            )
        }

        public static func vndGoogleEarthKmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.google-earth.kml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "kml"
                ]
            )
        }

        public static func vndGoogleEarthKmz() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.google-earth.kmz",
                possibleExtensions: [
                    "kmz"
                ]
            )
        }

        public static func vndGovSkEFormXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gov.sk.e-form",
                    suffix: "xml"
                )
            )
        }

        public static func vndGovSkEFormZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gov.sk.e-form",
                    suffix: "zip"
                )
            )
        }

        public static func vndGovSkXmldatacontainerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gov.sk.xmldatacontainer",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xdcf"
                ]
            )
        }

        public static func vndGpxseeMapXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.gpxsee.map",
                    suffix: "xml"
                )
            )
        }

        public static func vndGrafeq() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.grafeq",
                possibleExtensions: [
                    "gqf",
                    "gqs",
                ]
            )
        }

        public static func vndGridmp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.gridmp"
            )
        }

        public static func vndGrooveAccount() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-account",
                possibleExtensions: [
                    "gac"
                ]
            )
        }

        public static func vndGrooveHelp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-help",
                possibleExtensions: [
                    "ghf"
                ]
            )
        }

        public static func vndGrooveIdentityMessage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-identity-message",
                possibleExtensions: [
                    "gim"
                ]
            )
        }

        public static func vndGrooveInjector() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-injector",
                possibleExtensions: [
                    "grv"
                ]
            )
        }

        public static func vndGrooveToolMessage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-tool-message",
                possibleExtensions: [
                    "gtm"
                ]
            )
        }

        public static func vndGrooveToolTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-tool-template",
                possibleExtensions: [
                    "tpl"
                ]
            )
        }

        public static func vndGrooveVcard() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.groove-vcard",
                possibleExtensions: [
                    "vcg"
                ]
            )
        }

        public static func vndHalJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hal",
                    suffix: "json"
                )
            )
        }

        public static func vndHalXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hal",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "hal"
                ]
            )
        }

        public static func vndHandheldEntertainmentXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.handheld-entertainment",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "zmm"
                ]
            )
        }

        public static func vndHbci() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hbci",
                possibleExtensions: [
                    "hbci"
                ]
            )
        }

        public static func vndHcJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hc",
                    suffix: "json"
                )
            )
        }

        public static func vndHclBireports() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hcl-bireports"
            )
        }

        public static func vndHdt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hdt"
            )
        }

        public static func vndHerokuJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.heroku",
                    suffix: "json"
                )
            )
        }

        public static func vndHheLessonPlayer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hhe.lesson-player",
                possibleExtensions: [
                    "les"
                ]
            )
        }

        public static func vndHpHpgl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-hpgl",
                possibleExtensions: [
                    "hpgl"
                ]
            )
        }

        public static func vndHpHpid() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-hpid",
                possibleExtensions: [
                    "hpid"
                ]
            )
        }

        public static func vndHpHps() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-hps",
                possibleExtensions: [
                    "hps"
                ]
            )
        }

        public static func vndHpJlyt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-jlyt",
                possibleExtensions: [
                    "jlt"
                ]
            )
        }

        public static func vndHpPcl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-pcl",
                possibleExtensions: [
                    "pcl"
                ]
            )
        }

        public static func vndHpPclxl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hp-pclxl",
                possibleExtensions: [
                    "pclxl"
                ]
            )
        }

        public static func vndHsl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hsl"
            )
        }

        public static func vndHttphone() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.httphone"
            )
        }

        public static func vndHydrostatixSofData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hydrostatix.sof-data",
                possibleExtensions: [
                    "sfd-hdstx"
                ]
            )
        }

        public static func vndHyperJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hyper",
                    suffix: "json"
                )
            )
        }

        public static func vndHyperItemJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hyper-item",
                    suffix: "json"
                )
            )
        }

        public static func vndHyperdriveJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.hyperdrive",
                    suffix: "json"
                )
            )
        }

        public static func vndHzn3dCrossword() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.hzn-3d-crossword"
            )
        }

        public static func vndIbmAfplinedata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.afplinedata"
            )
        }

        public static func vndIbmElectronicMedia() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.electronic-media"
            )
        }

        public static func vndIbmMinipay() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.minipay",
                possibleExtensions: [
                    "mpy"
                ]
            )
        }

        public static func vndIbmModcap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.modcap",
                possibleExtensions: [
                    "afp",
                    "listafp",
                    "list3820",
                ]
            )
        }

        public static func vndIbmRightsManagement() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.rights-management",
                possibleExtensions: [
                    "irm"
                ]
            )
        }

        public static func vndIbmSecureContainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ibm.secure-container",
                possibleExtensions: [
                    "sc"
                ]
            )
        }

        public static func vndIccprofile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.iccprofile",
                possibleExtensions: [
                    "icc",
                    "icm",
                ]
            )
        }

        public static func vndIeee1905() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ieee.1905"
            )
        }

        public static func vndIgloader() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.igloader",
                possibleExtensions: [
                    "igl"
                ]
            )
        }

        public static func vndImagemeterFolderZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.imagemeter.folder",
                    suffix: "zip"
                )
            )
        }

        public static func vndImagemeterImageZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.imagemeter.image",
                    suffix: "zip"
                )
            )
        }

        public static func vndImmervisionIvp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.immervision-ivp",
                possibleExtensions: [
                    "ivp"
                ]
            )
        }

        public static func vndImmervisionIvu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.immervision-ivu",
                possibleExtensions: [
                    "ivu"
                ]
            )
        }

        public static func vndImsImsccv1p1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ims.imsccv1p1"
            )
        }

        public static func vndImsImsccv1p2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ims.imsccv1p2"
            )
        }

        public static func vndImsImsccv1p3() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ims.imsccv1p3"
            )
        }

        public static func vndImsLisV2ResultJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lis.v2.result",
                    suffix: "json"
                )
            )
        }

        public static func vndImsLtiV2ToolconsumerprofileJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lti.v2.toolconsumerprofile",
                    suffix: "json"
                )
            )
        }

        public static func vndImsLtiV2ToolproxyJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lti.v2.toolproxy",
                    suffix: "json"
                )
            )
        }

        public static func vndImsLtiV2ToolproxyIdJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lti.v2.toolproxy.id",
                    suffix: "json"
                )
            )
        }

        public static func vndImsLtiV2ToolsettingsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lti.v2.toolsettings",
                    suffix: "json"
                )
            )
        }

        public static func vndImsLtiV2ToolsettingsSimpleJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ims.lti.v2.toolsettings.simple",
                    suffix: "json"
                )
            )
        }

        public static func vndInformedcontrolRmsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.informedcontrol.rms",
                    suffix: "xml"
                )
            )
        }

        public static func vndInformixVisionary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.informix-visionary"
            )
        }

        public static func vndInfotechProject() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.infotech.project"
            )
        }

        public static func vndInfotechProjectXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.infotech.project",
                    suffix: "xml"
                )
            )
        }

        public static func vndInnopathWampNotification() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.innopath.wamp.notification"
            )
        }

        public static func vndInsorsIgm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.insors.igm",
                possibleExtensions: [
                    "igm"
                ]
            )
        }

        public static func vndInterconFormnet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intercon.formnet",
                possibleExtensions: [
                    "xpw",
                    "xpx",
                ]
            )
        }

        public static func vndIntergeo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intergeo",
                possibleExtensions: [
                    "i2g"
                ]
            )
        }

        public static func vndIntertrustDigibox() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intertrust.digibox"
            )
        }

        public static func vndIntertrustNncp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intertrust.nncp"
            )
        }

        public static func vndIntuQbo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intu.qbo",
                possibleExtensions: [
                    "qbo"
                ]
            )
        }

        public static func vndIntuQfx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.intu.qfx",
                possibleExtensions: [
                    "qfx"
                ]
            )
        }

        public static func vndIpfsIpnsRecord() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipfs.ipns-record"
            )
        }

        public static func vndIpldCar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipld.car"
            )
        }

        public static func vndIpldDagCbor() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipld.dag-cbor"
            )
        }

        public static func vndIpldDagJson() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipld.dag-json"
            )
        }

        public static func vndIpldRaw() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipld.raw"
            )
        }

        public static func vndIptcG2CatalogitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.catalogitem",
                    suffix: "xml"
                )
            )
        }

        public static func vndIptcG2ConceptitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.conceptitem",
                    suffix: "xml"
                )
            )
        }

        public static func vndIptcG2KnowledgeitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.knowledgeitem",
                    suffix: "xml"
                )
            )
        }

        public static func vndIptcG2NewsitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.newsitem",
                    suffix: "xml"
                )
            )
        }

        public static func vndIptcG2NewsmessageXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.newsmessage",
                    suffix: "xml"
                )
            )
        }

        public static func vndIptcG2PackageitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.packageitem",
                    suffix: "xml"
                )
            )
        }

        public static func vndIptcG2PlanningitemXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iptc.g2.planningitem",
                    suffix: "xml"
                )
            )
        }

        public static func vndIpunpluggedRcprofile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ipunplugged.rcprofile",
                possibleExtensions: [
                    "rcprofile"
                ]
            )
        }

        public static func vndIrepositoryPackageXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.irepository.package",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "irp"
                ]
            )
        }

        public static func vndIsXpr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.is-xpr",
                possibleExtensions: [
                    "xpr"
                ]
            )
        }

        public static func vndIsacFcs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.isac.fcs",
                possibleExtensions: [
                    "fcs"
                ]
            )
        }

        public static func vndIso1178310Zip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.iso11783-10",
                    suffix: "zip"
                )
            )
        }

        public static func vndJam() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.jam",
                possibleExtensions: [
                    "jam"
                ]
            )
        }

        public static func vndJapannetDirectoryService() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-directory-service"
            )
        }

        public static func vndJapannetJpnstoreWakeup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-jpnstore-wakeup"
            )
        }

        public static func vndJapannetPaymentWakeup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-payment-wakeup"
            )
        }

        public static func vndJapannetRegistration() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-registration"
            )
        }

        public static func vndJapannetRegistrationWakeup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-registration-wakeup"
            )
        }

        public static func vndJapannetSetstoreWakeup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-setstore-wakeup"
            )
        }

        public static func vndJapannetVerification() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-verification"
            )
        }

        public static func vndJapannetVerificationWakeup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.japannet-verification-wakeup"
            )
        }

        public static func vndJcpJavameMidletRms() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.jcp.javame.midlet-rms",
                possibleExtensions: [
                    "rms"
                ]
            )
        }

        public static func vndJisp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.jisp",
                possibleExtensions: [
                    "jisp"
                ]
            )
        }

        public static func vndJoostJodaArchive() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.joost.joda-archive",
                possibleExtensions: [
                    "joda"
                ]
            )
        }

        public static func vndJskIsdnNgn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.jsk.isdn-ngn"
            )
        }

        public static func vndKahootz() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kahootz",
                possibleExtensions: [
                    "ktz",
                    "ktr",
                ]
            )
        }

        public static func vndKdeKarbon() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.karbon",
                possibleExtensions: [
                    "karbon"
                ]
            )
        }

        public static func vndKdeKchart() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kchart",
                possibleExtensions: [
                    "chrt"
                ]
            )
        }

        public static func vndKdeKformula() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kformula",
                possibleExtensions: [
                    "kfo"
                ]
            )
        }

        public static func vndKdeKivio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kivio",
                possibleExtensions: [
                    "flw"
                ]
            )
        }

        public static func vndKdeKontour() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kontour",
                possibleExtensions: [
                    "kon"
                ]
            )
        }

        public static func vndKdeKpresenter() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kpresenter",
                possibleExtensions: [
                    "kpr",
                    "kpt",
                ]
            )
        }

        public static func vndKdeKspread() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kspread",
                possibleExtensions: [
                    "ksp"
                ]
            )
        }

        public static func vndKdeKword() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kde.kword",
                possibleExtensions: [
                    "kwd",
                    "kwt",
                ]
            )
        }

        public static func vndKdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kdl"
            )
        }

        public static func vndKenameaapp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kenameaapp",
                possibleExtensions: [
                    "htke"
                ]
            )
        }

        public static func vndKeymanKmpZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.keyman.kmp",
                    suffix: "zip"
                )
            )
        }

        public static func vndKeymanKmx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.keyman.kmx"
            )
        }

        public static func vndKidspiration() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kidspiration",
                possibleExtensions: [
                    "kia"
                ]
            )
        }

        public static func vndKinar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kinar",
                possibleExtensions: [
                    "kne",
                    "knp",
                ]
            )
        }

        public static func vndKoan() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.koan",
                possibleExtensions: [
                    "skp",
                    "skd",
                    "skt",
                    "skm",
                ]
            )
        }

        public static func vndKodakDescriptor() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.kodak-descriptor",
                possibleExtensions: [
                    "sse"
                ]
            )
        }

        public static func vndLas() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.las"
            )
        }

        public static func vndLasLasJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.las.las",
                    suffix: "json"
                )
            )
        }

        public static func vndLasLasXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.las.las",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "lasxml"
                ]
            )
        }

        public static func vndLaszip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.laszip"
            )
        }

        public static func vndLdevProductlicensing() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ldev.productlicensing"
            )
        }

        public static func vndLeapJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.leap",
                    suffix: "json"
                )
            )
        }

        public static func vndLibertyRequestXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.liberty-request",
                    suffix: "xml"
                )
            )
        }

        public static func vndLlamagraphicsLifeBalanceDesktop() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.llamagraphics.life-balance.desktop",
                possibleExtensions: [
                    "lbd"
                ]
            )
        }

        public static func vndLlamagraphicsLifeBalanceExchangeXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.llamagraphics.life-balance.exchange",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "lbe"
                ]
            )
        }

        public static func vndLogipipeCircuitZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.logipipe.circuit",
                    suffix: "zip"
                )
            )
        }

        public static func vndLoom() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.loom"
            )
        }

        public static func vndLotus123() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-1-2-3",
                possibleExtensions: [
                    "123"
                ]
            )
        }

        public static func vndLotusApproach() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-approach",
                possibleExtensions: [
                    "apr"
                ]
            )
        }

        public static func vndLotusFreelance() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-freelance",
                possibleExtensions: [
                    "pre"
                ]
            )
        }

        public static func vndLotusNotes() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-notes",
                possibleExtensions: [
                    "nsf"
                ]
            )
        }

        public static func vndLotusOrganizer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-organizer",
                possibleExtensions: [
                    "org"
                ]
            )
        }

        public static func vndLotusScreencam() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-screencam",
                possibleExtensions: [
                    "scm"
                ]
            )
        }

        public static func vndLotusWordpro() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.lotus-wordpro",
                possibleExtensions: [
                    "lwp"
                ]
            )
        }

        public static func vndMacportsPortpkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.macports.portpkg",
                possibleExtensions: [
                    "portpkg"
                ]
            )
        }

        public static func vndMaml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.maml"
            )
        }

        public static func vndMapboxVectorTile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mapbox-vector-tile",
                possibleExtensions: [
                    "mvt"
                ]
            )
        }

        public static func vndMarlinDrmActiontokenXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.marlin.drm.actiontoken",
                    suffix: "xml"
                )
            )
        }

        public static func vndMarlinDrmConftokenXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.marlin.drm.conftoken",
                    suffix: "xml"
                )
            )
        }

        public static func vndMarlinDrmLicenseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.marlin.drm.license",
                    suffix: "xml"
                )
            )
        }

        public static func vndMarlinDrmMdcf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.marlin.drm.mdcf"
            )
        }

        public static func vndMasonJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.mason",
                    suffix: "json"
                )
            )
        }

        public static func vndMaxarArchive3tzZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.maxar.archive.3tz",
                    suffix: "zip"
                )
            )
        }

        public static func vndMaxmindMaxmindDb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.maxmind.maxmind-db"
            )
        }

        public static func vndMcd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mcd",
                possibleExtensions: [
                    "mcd"
                ]
            )
        }

        public static func vndMdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mdl"
            )
        }

        public static func vndMdlMbsdf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mdl-mbsdf"
            )
        }

        public static func vndMedcalcdata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.medcalcdata",
                possibleExtensions: [
                    "mc1"
                ]
            )
        }

        public static func vndMediastationCdkey() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mediastation.cdkey",
                possibleExtensions: [
                    "cdkey"
                ]
            )
        }

        public static func vndMedicalholodeckRecordxr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.medicalholodeck.recordxr"
            )
        }

        public static func vndMeridianSlingshot() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.meridian-slingshot"
            )
        }

        public static func vndMermaid() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mermaid"
            )
        }

        public static func vndMfer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mfer",
                possibleExtensions: [
                    "mwf"
                ]
            )
        }

        public static func vndMfmp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mfmp",
                possibleExtensions: [
                    "mfm"
                ]
            )
        }

        public static func vndMicroJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.micro",
                    suffix: "json"
                )
            )
        }

        public static func vndMicrografxFlo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.micrografx.flo",
                possibleExtensions: [
                    "flo"
                ]
            )
        }

        public static func vndMicrografxIgx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.micrografx.igx",
                possibleExtensions: [
                    "igx"
                ]
            )
        }

        public static func vndMicrosoftPortableExecutable() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.microsoft.portable-executable"
            )
        }

        public static func vndMicrosoftWindowsThumbnailCache() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.microsoft.windows.thumbnail-cache"
            )
        }

        public static func vndMieleJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.miele",
                    suffix: "json"
                )
            )
        }

        public static func vndMif() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mif",
                possibleExtensions: [
                    "mif"
                ]
            )
        }

        public static func vndMinisoftHp3000Save() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.minisoft-hp3000-save"
            )
        }

        public static func vndMitsubishiMistyGuardTrustweb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mitsubishi.misty-guard.trustweb"
            )
        }

        public static func vndMobiusDaf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.daf",
                possibleExtensions: [
                    "daf"
                ]
            )
        }

        public static func vndMobiusDis() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.dis",
                possibleExtensions: [
                    "dis"
                ]
            )
        }

        public static func vndMobiusMbk() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.mbk",
                possibleExtensions: [
                    "mbk"
                ]
            )
        }

        public static func vndMobiusMqy() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.mqy",
                possibleExtensions: [
                    "mqy"
                ]
            )
        }

        public static func vndMobiusMsl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.msl",
                possibleExtensions: [
                    "msl"
                ]
            )
        }

        public static func vndMobiusPlc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.plc",
                possibleExtensions: [
                    "plc"
                ]
            )
        }

        public static func vndMobiusTxf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mobius.txf",
                possibleExtensions: [
                    "txf"
                ]
            )
        }

        public static func vndModl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.modl"
            )
        }

        public static func vndMophunApplication() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mophun.application",
                possibleExtensions: [
                    "mpn"
                ]
            )
        }

        public static func vndMophunCertificate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mophun.certificate",
                possibleExtensions: [
                    "mpc"
                ]
            )
        }

        public static func vndMotorolaFlexsuite() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite"
            )
        }

        public static func vndMotorolaFlexsuiteAdsi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.adsi"
            )
        }

        public static func vndMotorolaFlexsuiteFis() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.fis"
            )
        }

        public static func vndMotorolaFlexsuiteGotap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.gotap"
            )
        }

        public static func vndMotorolaFlexsuiteKmr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.kmr"
            )
        }

        public static func vndMotorolaFlexsuiteTtc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.ttc"
            )
        }

        public static func vndMotorolaFlexsuiteWem() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.flexsuite.wem"
            )
        }

        public static func vndMotorolaIprm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.motorola.iprm"
            )
        }

        public static func vndMozillaXulXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.mozilla.xul",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xul"
                ]
            )
        }

        public static func vndMs3mfdocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-3mfdocument"
            )
        }

        public static func vndMsArtgalry() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-artgalry",
                possibleExtensions: [
                    "cil"
                ]
            )
        }

        public static func vndMsAsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-asf"
            )
        }

        public static func vndMsCabCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-cab-compressed",
                possibleExtensions: [
                    "cab"
                ]
            )
        }

        public static func vndMsColorIccprofile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-color.iccprofile"
            )
        }

        public static func vndMsExcel() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-excel",
                possibleExtensions: [
                    "xls",
                    "xlm",
                    "xla",
                    "xlc",
                    "xlt",
                    "xlw",
                ]
            )
        }

        public static func vndMsExcelAddinMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-excel.addin.macroenabled.12",
                possibleExtensions: [
                    "xlam"
                ]
            )
        }

        public static func vndMsExcelSheetBinaryMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-excel.sheet.binary.macroenabled.12",
                possibleExtensions: [
                    "xlsb"
                ]
            )
        }

        public static func vndMsExcelSheetMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-excel.sheet.macroenabled.12",
                possibleExtensions: [
                    "xlsm"
                ]
            )
        }

        public static func vndMsExcelTemplateMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-excel.template.macroenabled.12",
                possibleExtensions: [
                    "xltm"
                ]
            )
        }

        public static func vndMsFontobject() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-fontobject",
                possibleExtensions: [
                    "eot"
                ]
            )
        }

        public static func vndMsHtmlhelp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-htmlhelp",
                possibleExtensions: [
                    "chm"
                ]
            )
        }

        public static func vndMsIms() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-ims",
                possibleExtensions: [
                    "ims"
                ]
            )
        }

        public static func vndMsLrm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-lrm",
                possibleExtensions: [
                    "lrm"
                ]
            )
        }

        public static func vndMsOfficeActivexXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ms-office.activex",
                    suffix: "xml"
                )
            )
        }

        public static func vndMsOfficetheme() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-officetheme",
                possibleExtensions: [
                    "thmx"
                ]
            )
        }

        public static func vndMsOpentype() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-opentype"
            )
        }

        public static func vndMsOutlook() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-outlook",
                possibleExtensions: [
                    "msg"
                ]
            )
        }

        public static func vndMsPackageObfuscatedOpentype() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-package.obfuscated-opentype"
            )
        }

        public static func vndMsPkiSeccat() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-pki.seccat",
                possibleExtensions: [
                    "cat"
                ]
            )
        }

        public static func vndMsPkiStl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-pki.stl",
                possibleExtensions: [
                    "stl"
                ]
            )
        }

        public static func vndMsPlayreadyInitiatorXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ms-playready.initiator",
                    suffix: "xml"
                )
            )
        }

        public static func vndMsPowerpoint() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint",
                possibleExtensions: [
                    "ppt",
                    "pps",
                    "pot",
                ]
            )
        }

        public static func vndMsPowerpointAddinMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint.addin.macroenabled.12",
                possibleExtensions: [
                    "ppam"
                ]
            )
        }

        public static func vndMsPowerpointPresentationMacroenabled12()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint.presentation.macroenabled.12",
                possibleExtensions: [
                    "pptm"
                ]
            )
        }

        public static func vndMsPowerpointSlideMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint.slide.macroenabled.12",
                possibleExtensions: [
                    "sldm"
                ]
            )
        }

        public static func vndMsPowerpointSlideshowMacroenabled12() -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint.slideshow.macroenabled.12",
                possibleExtensions: [
                    "ppsm"
                ]
            )
        }

        public static func vndMsPowerpointTemplateMacroenabled12() -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.ms-powerpoint.template.macroenabled.12",
                possibleExtensions: [
                    "potm"
                ]
            )
        }

        public static func vndMsPrintdevicecapabilitiesXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ms-printdevicecapabilities",
                    suffix: "xml"
                )
            )
        }

        public static func vndMsPrintingPrintticketXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ms-printing.printticket",
                    suffix: "xml"
                )
            )
        }

        public static func vndMsPrintschematicketXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ms-printschematicket",
                    suffix: "xml"
                )
            )
        }

        public static func vndMsProject() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-project",
                possibleExtensions: [
                    "mpp",
                    "mpt",
                ]
            )
        }

        public static func vndMsTnef() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-tnef"
            )
        }

        public static func vndMsVisioViewer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-visio.viewer",
                possibleExtensions: [
                    "vdx"
                ]
            )
        }

        public static func vndMsWindowsDevicepairing() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-windows.devicepairing"
            )
        }

        public static func vndMsWindowsNwprintingOob() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-windows.nwprinting.oob"
            )
        }

        public static func vndMsWindowsPrinterpairing() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-windows.printerpairing"
            )
        }

        public static func vndMsWindowsWsdOob() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-windows.wsd.oob"
            )
        }

        public static func vndMsWmdrmLicChlgReq() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-wmdrm.lic-chlg-req"
            )
        }

        public static func vndMsWmdrmLicResp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-wmdrm.lic-resp"
            )
        }

        public static func vndMsWmdrmMeterChlgReq() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-wmdrm.meter-chlg-req"
            )
        }

        public static func vndMsWmdrmMeterResp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-wmdrm.meter-resp"
            )
        }

        public static func vndMsWordDocumentMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-word.document.macroenabled.12",
                possibleExtensions: [
                    "docm"
                ]
            )
        }

        public static func vndMsWordTemplateMacroenabled12() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-word.template.macroenabled.12",
                possibleExtensions: [
                    "dotm"
                ]
            )
        }

        public static func vndMsWorks() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-works",
                possibleExtensions: [
                    "wps",
                    "wks",
                    "wcm",
                    "wdb",
                ]
            )
        }

        public static func vndMsWpl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-wpl",
                possibleExtensions: [
                    "wpl"
                ]
            )
        }

        public static func vndMsXpsdocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ms-xpsdocument",
                possibleExtensions: [
                    "xps"
                ]
            )
        }

        public static func vndMsaDiskImage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.msa-disk-image"
            )
        }

        public static func vndMseq() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mseq",
                possibleExtensions: [
                    "mseq"
                ]
            )
        }

        public static func vndMsgpack() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.msgpack"
            )
        }

        public static func vndMsign() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.msign"
            )
        }

        public static func vndMultiadCreator() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.multiad.creator"
            )
        }

        public static func vndMultiadCreatorCif() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.multiad.creator.cif"
            )
        }

        public static func vndMusicNiff() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.music-niff"
            )
        }

        public static func vndMusician() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.musician",
                possibleExtensions: [
                    "mus"
                ]
            )
        }

        public static func vndMuveeStyle() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.muvee.style",
                possibleExtensions: [
                    "msty"
                ]
            )
        }

        public static func vndMynfc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.mynfc",
                possibleExtensions: [
                    "taglet"
                ]
            )
        }

        public static func vndNacamarYbridJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nacamar.ybrid",
                    suffix: "json"
                )
            )
        }

        public static func vndNatoBindingdataobjectCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nato.bindingdataobject",
                    suffix: "cbor"
                )
            )
        }

        public static func vndNatoBindingdataobjectJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nato.bindingdataobject",
                    suffix: "json"
                )
            )
        }

        public static func vndNatoBindingdataobjectXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nato.bindingdataobject",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "bdo"
                ]
            )
        }

        public static func vndNatoOpenxmlformatsPackageIepdZip() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nato.openxmlformats-package.iepd",
                    suffix: "zip"
                )
            )
        }

        public static func vndNcdControl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ncd.control"
            )
        }

        public static func vndNcdReference() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ncd.reference"
            )
        }

        public static func vndNearstInvJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nearst.inv",
                    suffix: "json"
                )
            )
        }

        public static func vndNebumindLine() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nebumind.line"
            )
        }

        public static func vndNervana() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nervana"
            )
        }

        public static func vndNetfpx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.netfpx"
            )
        }

        public static func vndNeurolanguageNlu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.neurolanguage.nlu",
                possibleExtensions: [
                    "nlu"
                ]
            )
        }

        public static func vndNimn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nimn"
            )
        }

        public static func vndNintendoNitroRom() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nintendo.nitro.rom"
            )
        }

        public static func vndNintendoSnesRom() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nintendo.snes.rom"
            )
        }

        public static func vndNitf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nitf",
                possibleExtensions: [
                    "ntf",
                    "nitf",
                ]
            )
        }

        public static func vndNoblenetDirectory() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.noblenet-directory",
                possibleExtensions: [
                    "nnd"
                ]
            )
        }

        public static func vndNoblenetSealer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.noblenet-sealer",
                possibleExtensions: [
                    "nns"
                ]
            )
        }

        public static func vndNoblenetWeb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.noblenet-web",
                possibleExtensions: [
                    "nnw"
                ]
            )
        }

        public static func vndNokiaCatalogs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.catalogs"
            )
        }

        public static func vndNokiaConmlWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.conml",
                    suffix: "wbxml"
                )
            )
        }

        public static func vndNokiaConmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.conml",
                    suffix: "xml"
                )
            )
        }

        public static func vndNokiaIptvConfigXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.iptv.config",
                    suffix: "xml"
                )
            )
        }

        public static func vndNokiaIsdsRadioPresets() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.isds-radio-presets"
            )
        }

        public static func vndNokiaLandmarkWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.landmark",
                    suffix: "wbxml"
                )
            )
        }

        public static func vndNokiaLandmarkXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.landmark",
                    suffix: "xml"
                )
            )
        }

        public static func vndNokiaLandmarkcollectionXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.landmarkcollection",
                    suffix: "xml"
                )
            )
        }

        public static func vndNokiaNGageAcXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.n-gage.ac",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ac"
                ]
            )
        }

        public static func vndNokiaNGageData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.n-gage.data",
                possibleExtensions: [
                    "ngdat"
                ]
            )
        }

        public static func vndNokiaNGageSymbianInstall() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.n-gage.symbian.install",
                possibleExtensions: [
                    "n-gage"
                ]
            )
        }

        public static func vndNokiaNcd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.ncd"
            )
        }

        public static func vndNokiaPcdWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.pcd",
                    suffix: "wbxml"
                )
            )
        }

        public static func vndNokiaPcdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.nokia.pcd",
                    suffix: "xml"
                )
            )
        }

        public static func vndNokiaRadioPreset() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.radio-preset",
                possibleExtensions: [
                    "rpst"
                ]
            )
        }

        public static func vndNokiaRadioPresets() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nokia.radio-presets",
                possibleExtensions: [
                    "rpss"
                ]
            )
        }

        public static func vndNovadigmEdm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.novadigm.edm",
                possibleExtensions: [
                    "edm"
                ]
            )
        }

        public static func vndNovadigmEdx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.novadigm.edx",
                possibleExtensions: [
                    "edx"
                ]
            )
        }

        public static func vndNovadigmExt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.novadigm.ext",
                possibleExtensions: [
                    "ext"
                ]
            )
        }

        public static func vndNttLocalContentShare() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ntt-local.content-share"
            )
        }

        public static func vndNttLocalFileTransfer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ntt-local.file-transfer"
            )
        }

        public static func vndNttLocalOgwRemoteAccess() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ntt-local.ogw_remote-access"
            )
        }

        public static func vndNttLocalSipTaRemote() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ntt-local.sip-ta_remote"
            )
        }

        public static func vndNttLocalSipTaTcpStream() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ntt-local.sip-ta_tcp_stream"
            )
        }

        public static func vndNubaltecNudokuGame() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.nubaltec.nudoku-game"
            )
        }

        public static func vndOaiWorkflows() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oai.workflows"
            )
        }

        public static func vndOaiWorkflowsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oai.workflows",
                    suffix: "json"
                )
            )
        }

        public static func vndOaiWorkflowsYaml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oai.workflows",
                    suffix: "yaml"
                )
            )
        }

        public static func vndOasisOpendocumentBase() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.base"
            )
        }

        public static func vndOasisOpendocumentChart() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.chart",
                possibleExtensions: [
                    "odc"
                ]
            )
        }

        public static func vndOasisOpendocumentChartTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.chart-template",
                possibleExtensions: [
                    "otc"
                ]
            )
        }

        public static func vndOasisOpendocumentDatabase() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.database",
                possibleExtensions: [
                    "odb"
                ]
            )
        }

        public static func vndOasisOpendocumentFormula() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.formula",
                possibleExtensions: [
                    "odf"
                ]
            )
        }

        public static func vndOasisOpendocumentFormulaTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.formula-template",
                possibleExtensions: [
                    "odft"
                ]
            )
        }

        public static func vndOasisOpendocumentGraphics() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.graphics",
                possibleExtensions: [
                    "odg"
                ]
            )
        }

        public static func vndOasisOpendocumentGraphicsTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.graphics-template",
                possibleExtensions: [
                    "otg"
                ]
            )
        }

        public static func vndOasisOpendocumentImage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.image",
                possibleExtensions: [
                    "odi"
                ]
            )
        }

        public static func vndOasisOpendocumentImageTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.image-template",
                possibleExtensions: [
                    "oti"
                ]
            )
        }

        public static func vndOasisOpendocumentPresentation() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.presentation",
                possibleExtensions: [
                    "odp"
                ]
            )
        }

        public static func vndOasisOpendocumentPresentationTemplate()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.presentation-template",
                possibleExtensions: [
                    "otp"
                ]
            )
        }

        public static func vndOasisOpendocumentSpreadsheet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.spreadsheet",
                possibleExtensions: [
                    "ods"
                ]
            )
        }

        public static func vndOasisOpendocumentSpreadsheetTemplate()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.spreadsheet-template",
                possibleExtensions: [
                    "ots"
                ]
            )
        }

        public static func vndOasisOpendocumentText() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.text",
                possibleExtensions: [
                    "odt"
                ]
            )
        }

        public static func vndOasisOpendocumentTextMaster() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.text-master",
                possibleExtensions: [
                    "odm"
                ]
            )
        }

        public static func vndOasisOpendocumentTextMasterTemplate() -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.text-master-template"
            )
        }

        public static func vndOasisOpendocumentTextTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.text-template",
                possibleExtensions: [
                    "ott"
                ]
            )
        }

        public static func vndOasisOpendocumentTextWeb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oasis.opendocument.text-web",
                possibleExtensions: [
                    "oth"
                ]
            )
        }

        public static func vndObn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.obn"
            )
        }

        public static func vndOcfCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.ocf",
                    suffix: "cbor"
                )
            )
        }

        public static func vndOciImageManifestV1Json() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oci.image.manifest.v1",
                    suffix: "json"
                )
            )
        }

        public static func vndOftnL10nJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oftn.l10n",
                    suffix: "json"
                )
            )
        }

        public static func vndOipfContentaccessdownloadXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.contentaccessdownload",
                    suffix: "xml"
                )
            )
        }

        public static func vndOipfContentaccessstreamingXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.contentaccessstreaming",
                    suffix: "xml"
                )
            )
        }

        public static func vndOipfCspgHexbinary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oipf.cspg-hexbinary"
            )
        }

        public static func vndOipfDaeSvgXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.dae.svg",
                    suffix: "xml"
                )
            )
        }

        public static func vndOipfDaeXhtmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.dae.xhtml",
                    suffix: "xml"
                )
            )
        }

        public static func vndOipfMippvcontrolmessageXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.mippvcontrolmessage",
                    suffix: "xml"
                )
            )
        }

        public static func vndOipfPaeGem() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oipf.pae.gem"
            )
        }

        public static func vndOipfSpdiscoveryXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.spdiscovery",
                    suffix: "xml"
                )
            )
        }

        public static func vndOipfSpdlistXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.spdlist",
                    suffix: "xml"
                )
            )
        }

        public static func vndOipfUeprofileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.ueprofile",
                    suffix: "xml"
                )
            )
        }

        public static func vndOipfUserprofileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oipf.userprofile",
                    suffix: "xml"
                )
            )
        }

        public static func vndOlpcSugar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.olpc-sugar",
                possibleExtensions: [
                    "xo"
                ]
            )
        }

        public static func vndOmaScwsConfig() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma-scws-config"
            )
        }

        public static func vndOmaScwsHttpRequest() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma-scws-http-request"
            )
        }

        public static func vndOmaScwsHttpResponse() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma-scws-http-response"
            )
        }

        public static func vndOmaBcastAssociatedProcedureParameterXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.associated-procedure-parameter",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaBcastDrmTriggerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.drm-trigger",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaBcastImdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.imd",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaBcastLtkm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.ltkm"
            )
        }

        public static func vndOmaBcastNotificationXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.notification",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaBcastProvisioningtrigger() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.provisioningtrigger"
            )
        }

        public static func vndOmaBcastSgboot() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.sgboot"
            )
        }

        public static func vndOmaBcastSgddXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.sgdd",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaBcastSgdu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.sgdu"
            )
        }

        public static func vndOmaBcastSimpleSymbolContainer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.simple-symbol-container"
            )
        }

        public static func vndOmaBcastSmartcardTriggerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.smartcard-trigger",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaBcastSprovXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.bcast.sprov",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaBcastStkm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.bcast.stkm"
            )
        }

        public static func vndOmaCabAddressBookXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.cab-address-book",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaCabFeatureHandlerXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.cab-feature-handler",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaCabPccXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.cab-pcc",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaCabSubsInviteXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.cab-subs-invite",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaCabUserPrefsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.cab-user-prefs",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaDcd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.dcd"
            )
        }

        public static func vndOmaDcdc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.dcdc"
            )
        }

        public static func vndOmaDd2Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.dd2",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dd2"
                ]
            )
        }

        public static func vndOmaDrmRisdXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.drm.risd",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaGroupUsageListXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.group-usage-list",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaLwm2mCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.lwm2m",
                    suffix: "cbor"
                )
            )
        }

        public static func vndOmaLwm2mJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.lwm2m",
                    suffix: "json"
                )
            )
        }

        public static func vndOmaLwm2mTlv() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.lwm2m",
                    suffix: "tlv"
                )
            )
        }

        public static func vndOmaPalXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.pal",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaPocDetailedProgressReportXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.poc.detailed-progress-report",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaPocFinalReportXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.poc.final-report",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaPocGroupsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.poc.groups",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaPocInvocationDescriptorXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.poc.invocation-descriptor",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaPocOptimizedProgressReportXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.poc.optimized-progress-report",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaPush() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oma.push"
            )
        }

        public static func vndOmaScidmMessagesXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.scidm.messages",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmaXcapDirectoryXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oma.xcap-directory",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmadsEmailXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.omads-email",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmadsFileXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.omads-file",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmadsFolderXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.omads-folder",
                    suffix: "xml"
                )
            )
        }

        public static func vndOmalocSuplInit() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.omaloc-supl-init"
            )
        }

        public static func vndOmsCellularCoseContentCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oms.cellular-cose-content",
                    suffix: "cbor"
                )
            )
        }

        public static func vndOnepager() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepager"
            )
        }

        public static func vndOnepagertamp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepagertamp"
            )
        }

        public static func vndOnepagertamx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepagertamx"
            )
        }

        public static func vndOnepagertat() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepagertat"
            )
        }

        public static func vndOnepagertatp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepagertatp"
            )
        }

        public static func vndOnepagertatx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onepagertatx"
            )
        }

        public static func vndOnvifMetadata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.onvif.metadata"
            )
        }

        public static func vndOpenbloxGameXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openblox.game",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "obgx"
                ]
            )
        }

        public static func vndOpenbloxGameBinary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.openblox.game-binary"
            )
        }

        public static func vndOpeneyeOeb() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.openeye.oeb"
            )
        }

        public static func vndOpenofficeorgExtension() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.openofficeorg.extension",
                possibleExtensions: [
                    "oxt"
                ]
            )
        }

        public static func vndOpenprinttag() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.openprinttag"
            )
        }

        public static func vndOpenstreetmapDataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openstreetmap.data",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "osm"
                ]
            )
        }

        public static func vndOpentimestampsOts() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.opentimestamps.ots"
            )
        }

        public static func vndOpenvpiDspxJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openvpi.dspx",
                    suffix: "json"
                )
            )
        }

        public static func vndOpenxmlformatsOfficedocumentCustomPropertiesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.custom-properties",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentCustomxmlpropertiesXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.customxmlproperties",
                    suffix: "xml"
                )
            )
        }

        public static func vndOpenxmlformatsOfficedocumentDrawingXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-officedocument.drawing",
                    suffix: "xml"
                )
            )
        }

        public static func vndOpenxmlformatsOfficedocumentDrawingmlChartXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-officedocument.drawingml.chart",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentDrawingmlChartshapesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.drawingml.chartshapes",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentDrawingmlDiagramcolorsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.drawingml.diagramcolors",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentDrawingmlDiagramdataXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.drawingml.diagramdata",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentDrawingmlDiagramlayoutXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.drawingml.diagramlayout",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentDrawingmlDiagramstyleXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.drawingml.diagramstyle",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentExtendedPropertiesXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.extended-properties",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlCommentauthorsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.commentauthors",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlCommentsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.comments",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlHandoutmasterXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.handoutmaster",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlNotesmasterXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.notesmaster",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlNotesslideXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.notesslide",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlPresentation()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.presentationml.presentation",
                possibleExtensions: [
                    "pptx"
                ]
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlPresentationMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.presentation.main",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlPrespropsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.presprops",
                    suffix: "xml"
                )
            )
        }

        public static func vndOpenxmlformatsOfficedocumentPresentationmlSlide()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.presentationml.slide",
                possibleExtensions: [
                    "sldx"
                ]
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlideXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.slide",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlidelayoutXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.slidelayout",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlidemasterXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.slidemaster",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlideshow()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.presentationml.slideshow",
                possibleExtensions: [
                    "ppsx"
                ]
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlideshowMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.slideshow.main",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlSlideupdateinfoXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.slideupdateinfo",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlTablestylesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.tablestyles",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlTagsXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.tags",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlTemplate() -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.presentationml.template",
                possibleExtensions: [
                    "potx"
                ]
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlTemplateMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.template.main",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentPresentationmlViewpropsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.presentationml.viewprops",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlCalcchainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.calcchain",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlChartsheetXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.chartsheet",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlCommentsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.comments",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlConnectionsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.connections",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlDialogsheetXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.dialogsheet",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlExternallinkXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.externallink",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlPivotcachedefinitionXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.pivotcachedefinition",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlPivotcacherecordsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.pivotcacherecords",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlPivottableXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.pivottable",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlQuerytableXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.querytable",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlRevisionheadersXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.revisionheaders",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlRevisionlogXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.revisionlog",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlSharedstringsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.sharedstrings",
                    suffix: "xml"
                )
            )
        }

        public static func vndOpenxmlformatsOfficedocumentSpreadsheetmlSheet()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.spreadsheetml.sheet",
                possibleExtensions: [
                    "xlsx"
                ]
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlSheetMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.sheet.main",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlSheetmetadataXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.sheetmetadata",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlStylesXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.styles",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlTableXml() -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.table",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlTablesinglecellsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.tablesinglecells",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlTemplate() -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.spreadsheetml.template",
                possibleExtensions: [
                    "xltx"
                ]
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlTemplateMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.template.main",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlUsernamesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.usernames",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlVolatiledependenciesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.volatiledependencies",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentSpreadsheetmlWorksheetXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.spreadsheetml.worksheet",
                    suffix: "xml"
                )
            )
        }

        public static func vndOpenxmlformatsOfficedocumentThemeXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-officedocument.theme",
                    suffix: "xml"
                )
            )
        }

        public static func vndOpenxmlformatsOfficedocumentThemeoverrideXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-officedocument.themeoverride",
                    suffix: "xml"
                )
            )
        }

        public static func vndOpenxmlformatsOfficedocumentVmldrawing()
            -> MediaType
        {
            .init(
                type: name,
                subtype: "vnd.openxmlformats-officedocument.vmldrawing"
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlCommentsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.comments",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlDocument()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.wordprocessingml.document",
                possibleExtensions: [
                    "docx"
                ]
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlDocumentGlossaryXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.document.glossary",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlDocumentMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.document.main",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlEndnotesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.endnotes",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlFonttableXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.fonttable",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlFooterXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.footer",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlFootnotesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.footnotes",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlNumberingXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.numbering",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlSettingsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.settings",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlStylesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.styles",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlTemplate()
            -> MediaType
        {
            .init(
                type: name,
                subtype:
                    "vnd.openxmlformats-officedocument.wordprocessingml.template",
                possibleExtensions: [
                    "dotx"
                ]
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlTemplateMainXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.template.main",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsOfficedocumentWordprocessingmlWebsettingsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-officedocument.wordprocessingml.websettings",
                    suffix: "xml"
                )
            )
        }

        public static func vndOpenxmlformatsPackageCorePropertiesXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-package.core-properties",
                    suffix: "xml"
                )
            )
        }

        public static func
            vndOpenxmlformatsPackageDigitalSignatureXmlsignatureXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value:
                        "vnd.openxmlformats-package.digital-signature-xmlsignature",
                    suffix: "xml"
                )
            )
        }

        public static func vndOpenxmlformatsPackageRelationshipsXml()
            -> MediaType
        {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.openxmlformats-package.relationships",
                    suffix: "xml"
                )
            )
        }

        public static func vndOracleResourceJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.oracle.resource",
                    suffix: "json"
                )
            )
        }

        public static func vndOrangeIndata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.orange.indata"
            )
        }

        public static func vndOsaNetdeploy() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.osa.netdeploy"
            )
        }

        public static func vndOsgeoMapguidePackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.osgeo.mapguide.package",
                possibleExtensions: [
                    "mgp"
                ]
            )
        }

        public static func vndOsgiBundle() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.osgi.bundle"
            )
        }

        public static func vndOsgiDp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.osgi.dp",
                possibleExtensions: [
                    "dp"
                ]
            )
        }

        public static func vndOsgiSubsystem() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.osgi.subsystem",
                possibleExtensions: [
                    "esa"
                ]
            )
        }

        public static func vndOtpsCtKipXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.otps.ct-kip",
                    suffix: "xml"
                )
            )
        }

        public static func vndOxliCountgraph() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.oxli.countgraph"
            )
        }

        public static func vndPagerdutyJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.pagerduty",
                    suffix: "json"
                )
            )
        }

        public static func vndPalm() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.palm",
                possibleExtensions: [
                    "pdb",
                    "pqa",
                    "oprc",
                ]
            )
        }

        public static func vndPanoply() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.panoply"
            )
        }

        public static func vndPaosXml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.paos.xml"
            )
        }

        public static func vndPatentdive() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.patentdive"
            )
        }

        public static func vndPatientecommsdoc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.patientecommsdoc"
            )
        }

        public static func vndPawaafile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pawaafile",
                possibleExtensions: [
                    "paw"
                ]
            )
        }

        public static func vndPcos() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pcos"
            )
        }

        public static func vndPgFormat() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pg.format",
                possibleExtensions: [
                    "str"
                ]
            )
        }

        public static func vndPgOsasli() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pg.osasli",
                possibleExtensions: [
                    "ei6"
                ]
            )
        }

        public static func vndPiaccessApplicationLicence() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.piaccess.application-licence"
            )
        }

        public static func vndPicsel() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.picsel",
                possibleExtensions: [
                    "efif"
                ]
            )
        }

        public static func vndPmiWidget() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pmi.widget",
                possibleExtensions: [
                    "wg"
                ]
            )
        }

        public static func vndPmtiles() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pmtiles"
            )
        }

        public static func vndPocGroupAdvertisementXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.poc.group-advertisement",
                    suffix: "xml"
                )
            )
        }

        public static func vndPocketlearn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pocketlearn",
                possibleExtensions: [
                    "plf"
                ]
            )
        }

        public static func vndPowerbuilder6() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder6",
                possibleExtensions: [
                    "pbd"
                ]
            )
        }

        public static func vndPowerbuilder6S() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder6-s"
            )
        }

        public static func vndPowerbuilder7() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder7"
            )
        }

        public static func vndPowerbuilder7S() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder7-s"
            )
        }

        public static func vndPowerbuilder75() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder75"
            )
        }

        public static func vndPowerbuilder75S() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.powerbuilder75-s"
            )
        }

        public static func vndPpSystemverifyXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.pp.systemverify",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "systemverify"
                ]
            )
        }

        public static func vndPreminet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.preminet"
            )
        }

        public static func vndPreviewsystemsBox() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.previewsystems.box",
                possibleExtensions: [
                    "box"
                ]
            )
        }

        public static func vndProcreateBrush() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.procreate.brush",
                possibleExtensions: [
                    "brush"
                ]
            )
        }

        public static func vndProcreateBrushset() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.procreate.brushset",
                possibleExtensions: [
                    "brushset"
                ]
            )
        }

        public static func vndProcreateDream() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.procreate.dream",
                possibleExtensions: [
                    "drm"
                ]
            )
        }

        public static func vndProjectGraph() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.project-graph"
            )
        }

        public static func vndProteusMagazine() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.proteus.magazine",
                possibleExtensions: [
                    "mgz"
                ]
            )
        }

        public static func vndPsfs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.psfs"
            )
        }

        public static func vndPtMundusmundi() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pt.mundusmundi"
            )
        }

        public static func vndPublishareDeltaTree() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.publishare-delta-tree",
                possibleExtensions: [
                    "qps"
                ]
            )
        }

        public static func vndPviPtid1() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pvi.ptid1",
                possibleExtensions: [
                    "ptid"
                ]
            )
        }

        public static func vndPwgMultiplexed() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.pwg-multiplexed"
            )
        }

        public static func vndPwgXhtmlPrintXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.pwg-xhtml-print",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xhtm"
                ]
            )
        }

        public static func vndPyonJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.pyon",
                    suffix: "json"
                )
            )
        }

        public static func vndQualcommBrewAppRes() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.qualcomm.brew-app-res"
            )
        }

        public static func vndQuarantainenet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.quarantainenet"
            )
        }

        public static func vndQuarkQuarkxpress() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.quark.quarkxpress",
                possibleExtensions: [
                    "qxd",
                    "qxt",
                    "qwd",
                    "qwt",
                    "qxl",
                    "qxb",
                ]
            )
        }

        public static func vndQuobjectQuoxdocument() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.quobject-quoxdocument"
            )
        }

        public static func vndR74nSandboxelsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.r74n.sandboxels",
                    suffix: "json"
                )
            )
        }

        public static func vndRadisysMomlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.moml",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlAuditXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-audit",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlAuditConfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-audit-conf",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlAuditConnXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-audit-conn",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlAuditDialogXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-audit-dialog",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlAuditStreamXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-audit-stream",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlConfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-conf",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlDialogXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlDialogBaseXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-base",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlDialogFaxDetectXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-fax-detect",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlDialogFaxSendrecvXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-fax-sendrecv",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlDialogGroupXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-group",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlDialogSpeechXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-speech",
                    suffix: "xml"
                )
            )
        }

        public static func vndRadisysMsmlDialogTransformXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.radisys.msml-dialog-transform",
                    suffix: "xml"
                )
            )
        }

        public static func vndRainstorData() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rainstor.data"
            )
        }

        public static func vndRapid() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rapid"
            )
        }

        public static func vndRar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rar",
                possibleExtensions: [
                    "rar"
                ]
            )
        }

        public static func vndRealvncBed() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.realvnc.bed",
                possibleExtensions: [
                    "bed"
                ]
            )
        }

        public static func vndRecordareMusicxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.recordare.musicxml",
                possibleExtensions: [
                    "mxl"
                ]
            )
        }

        public static func vndRecordareMusicxmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.recordare.musicxml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "musicxml"
                ]
            )
        }

        public static func vndRelpipe() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.relpipe"
            )
        }

        public static func vndRenlearnRlprint() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.renlearn.rlprint"
            )
        }

        public static func vndResilientLogic() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.resilient.logic"
            )
        }

        public static func vndRestfulJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.restful",
                    suffix: "json"
                )
            )
        }

        public static func vndRigCryptonote() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rig.cryptonote",
                possibleExtensions: [
                    "cryptonote"
                ]
            )
        }

        public static func vndRimCod() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rim.cod",
                possibleExtensions: [
                    "cod"
                ]
            )
        }

        public static func vndRnRealmedia() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rn-realmedia",
                possibleExtensions: [
                    "rm"
                ]
            )
        }

        public static func vndRnRealmediaVbr() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rn-realmedia-vbr",
                possibleExtensions: [
                    "rmvb"
                ]
            )
        }

        public static func vndRoute66Link66Xml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.route66.link66",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "link66"
                ]
            )
        }

        public static func vndRs274x() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.rs-274x"
            )
        }

        public static func vndRuckusDownload() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ruckus.download"
            )
        }

        public static func vndS3sms() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.s3sms"
            )
        }

        public static func vndSailingtrackerTrack() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sailingtracker.track",
                possibleExtensions: [
                    "st"
                ]
            )
        }

        public static func vndSar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sar"
            )
        }

        public static func vndSbmCid() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sbm.cid"
            )
        }

        public static func vndSbmMid2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sbm.mid2"
            )
        }

        public static func vndScribus() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.scribus"
            )
        }

        public static func vndSealed3df() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.3df"
            )
        }

        public static func vndSealedCsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.csf"
            )
        }

        public static func vndSealedDoc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.doc"
            )
        }

        public static func vndSealedEml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.eml"
            )
        }

        public static func vndSealedMht() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.mht"
            )
        }

        public static func vndSealedNet() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.net"
            )
        }

        public static func vndSealedPpt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.ppt"
            )
        }

        public static func vndSealedTiff() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.tiff"
            )
        }

        public static func vndSealedXls() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealed.xls"
            )
        }

        public static func vndSealedmediaSoftsealHtml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.html"
            )
        }

        public static func vndSealedmediaSoftsealPdf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sealedmedia.softseal.pdf"
            )
        }

        public static func vndSeemail() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.seemail",
                possibleExtensions: [
                    "see"
                ]
            )
        }

        public static func vndSeisJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.seis",
                    suffix: "json"
                )
            )
        }

        public static func vndSema() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sema",
                possibleExtensions: [
                    "sema"
                ]
            )
        }

        public static func vndSemd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.semd",
                possibleExtensions: [
                    "semd"
                ]
            )
        }

        public static func vndSemf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.semf",
                possibleExtensions: [
                    "semf"
                ]
            )
        }

        public static func vndShadeSaveFile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shade-save-file"
            )
        }

        public static func vndShanaInformedFormdata() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shana.informed.formdata",
                possibleExtensions: [
                    "ifm"
                ]
            )
        }

        public static func vndShanaInformedFormtemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shana.informed.formtemplate",
                possibleExtensions: [
                    "itp"
                ]
            )
        }

        public static func vndShanaInformedInterchange() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shana.informed.interchange",
                possibleExtensions: [
                    "iif"
                ]
            )
        }

        public static func vndShanaInformedPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shana.informed.package",
                possibleExtensions: [
                    "ipk"
                ]
            )
        }

        public static func vndShootproofJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.shootproof",
                    suffix: "json"
                )
            )
        }

        public static func vndShopkickJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.shopkick",
                    suffix: "json"
                )
            )
        }

        public static func vndShp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shp"
            )
        }

        public static func vndShx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.shx"
            )
        }

        public static func vndSigrokSession() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sigrok.session"
            )
        }

        public static func vndSimtechMindmapper() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.simtech-mindmapper",
                possibleExtensions: [
                    "twd",
                    "twds",
                ]
            )
        }

        public static func vndSirenJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.siren",
                    suffix: "json"
                )
            )
        }

        public static func vndSirtxVmv0() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sirtx.vmv0"
            )
        }

        public static func vndSketchometry() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sketchometry"
            )
        }

        public static func vndSmaf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.smaf",
                possibleExtensions: [
                    "mmf"
                ]
            )
        }

        public static func vndSmartNotebook() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.smart.notebook"
            )
        }

        public static func vndSmartTeacher() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.smart.teacher",
                possibleExtensions: [
                    "teacher"
                ]
            )
        }

        public static func vndSmintioPortalsArchive() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.smintio.portals.archive"
            )
        }

        public static func vndSnesdevPageTable() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.snesdev-page-table"
            )
        }

        public static func vndSoftware602FillerFormXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.software602.filler.form",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "fo"
                ]
            )
        }

        public static func vndSoftware602FillerFormXmlZip() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.software602.filler.form-xml-zip"
            )
        }

        public static func vndSolentSdkmXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.solent.sdkm",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "sdkm",
                    "sdkd",
                ]
            )
        }

        public static func vndSpotfireDxp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.spotfire.dxp",
                possibleExtensions: [
                    "dxp"
                ]
            )
        }

        public static func vndSpotfireSfs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.spotfire.sfs",
                possibleExtensions: [
                    "sfs"
                ]
            )
        }

        public static func vndSqlite3() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sqlite3",
                possibleExtensions: [
                    "sqlite",
                    "sqlite3",
                ]
            )
        }

        public static func vndSssCod() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sss-cod"
            )
        }

        public static func vndSssDtf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sss-dtf"
            )
        }

        public static func vndSssNtf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sss-ntf"
            )
        }

        public static func vndStardivisionCalc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.calc",
                possibleExtensions: [
                    "sdc"
                ]
            )
        }

        public static func vndStardivisionDraw() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.draw",
                possibleExtensions: [
                    "sda"
                ]
            )
        }

        public static func vndStardivisionImpress() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.impress",
                possibleExtensions: [
                    "sdd"
                ]
            )
        }

        public static func vndStardivisionMath() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.math",
                possibleExtensions: [
                    "smf"
                ]
            )
        }

        public static func vndStardivisionWriter() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.writer",
                possibleExtensions: [
                    "sdw",
                    "vor",
                ]
            )
        }

        public static func vndStardivisionWriterGlobal() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stardivision.writer-global",
                possibleExtensions: [
                    "sgl"
                ]
            )
        }

        public static func vndStepmaniaPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stepmania.package",
                possibleExtensions: [
                    "smzip"
                ]
            )
        }

        public static func vndStepmaniaStepchart() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.stepmania.stepchart",
                possibleExtensions: [
                    "sm"
                ]
            )
        }

        public static func vndStreetStream() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.street-stream"
            )
        }

        public static func vndSunWadlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.sun.wadl",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "wadl"
                ]
            )
        }

        public static func vndSunXmlCalc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.calc",
                possibleExtensions: [
                    "sxc"
                ]
            )
        }

        public static func vndSunXmlCalcTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.calc.template",
                possibleExtensions: [
                    "stc"
                ]
            )
        }

        public static func vndSunXmlDraw() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.draw",
                possibleExtensions: [
                    "sxd"
                ]
            )
        }

        public static func vndSunXmlDrawTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.draw.template",
                possibleExtensions: [
                    "std"
                ]
            )
        }

        public static func vndSunXmlImpress() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.impress",
                possibleExtensions: [
                    "sxi"
                ]
            )
        }

        public static func vndSunXmlImpressTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.impress.template",
                possibleExtensions: [
                    "sti"
                ]
            )
        }

        public static func vndSunXmlMath() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.math",
                possibleExtensions: [
                    "sxm"
                ]
            )
        }

        public static func vndSunXmlWriter() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.writer",
                possibleExtensions: [
                    "sxw"
                ]
            )
        }

        public static func vndSunXmlWriterGlobal() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.writer.global",
                possibleExtensions: [
                    "sxg"
                ]
            )
        }

        public static func vndSunXmlWriterTemplate() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sun.xml.writer.template",
                possibleExtensions: [
                    "stw"
                ]
            )
        }

        public static func vndSuperfileSuper() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.superfile.super"
            )
        }

        public static func vndSusCalendar() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sus-calendar",
                possibleExtensions: [
                    "sus",
                    "susp",
                ]
            )
        }

        public static func vndSvd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.svd",
                possibleExtensions: [
                    "svd"
                ]
            )
        }

        public static func vndSwiftviewIcs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.swiftview-ics"
            )
        }

        public static func vndSybylMol2() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.sybyl.mol2"
            )
        }

        public static func vndSycleXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.sycle",
                    suffix: "xml"
                )
            )
        }

        public static func vndSyftJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syft",
                    suffix: "json"
                )
            )
        }

        public static func vndSymbianInstall() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.symbian.install",
                possibleExtensions: [
                    "sis",
                    "sisx",
                ]
            )
        }

        public static func vndSyncmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xsm"
                ]
            )
        }

        public static func vndSyncmlDmWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dm",
                    suffix: "wbxml"
                ),
                possibleExtensions: [
                    "bdm"
                ]
            )
        }

        public static func vndSyncmlDmXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dm",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xdm"
                ]
            )
        }

        public static func vndSyncmlDmNotification() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.syncml.dm.notification"
            )
        }

        public static func vndSyncmlDmddfWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dmddf",
                    suffix: "wbxml"
                )
            )
        }

        public static func vndSyncmlDmddfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dmddf",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ddf"
                ]
            )
        }

        public static func vndSyncmlDmtndsWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dmtnds",
                    suffix: "wbxml"
                )
            )
        }

        public static func vndSyncmlDmtndsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.syncml.dmtnds",
                    suffix: "xml"
                )
            )
        }

        public static func vndSyncmlDsNotification() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.syncml.ds.notification"
            )
        }

        public static func vndTableschemaJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.tableschema",
                    suffix: "json"
                )
            )
        }

        public static func vndTaoIntentModuleArchive() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tao.intent-module-archive",
                possibleExtensions: [
                    "tao"
                ]
            )
        }

        public static func vndTcpdumpPcap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tcpdump.pcap",
                possibleExtensions: [
                    "pcap",
                    "cap",
                    "dmp",
                ]
            )
        }

        public static func vndThinkCellPpttcJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.think-cell.ppttc",
                    suffix: "json"
                )
            )
        }

        public static func vndTmdMediaflexApiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.tmd.mediaflex.api",
                    suffix: "xml"
                )
            )
        }

        public static func vndTml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tml"
            )
        }

        public static func vndTmobileLivetv() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tmobile-livetv",
                possibleExtensions: [
                    "tmo"
                ]
            )
        }

        public static func vndTriOnesource() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.tri.onesource"
            )
        }

        public static func vndTridTpt() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.trid.tpt",
                possibleExtensions: [
                    "tpt"
                ]
            )
        }

        public static func vndTriscapeMxs() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.triscape.mxs",
                possibleExtensions: [
                    "mxs"
                ]
            )
        }

        public static func vndTrueapp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.trueapp",
                possibleExtensions: [
                    "tra"
                ]
            )
        }

        public static func vndTruedoc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.truedoc"
            )
        }

        public static func vndUbisoftWebplayer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ubisoft.webplayer"
            )
        }

        public static func vndUfdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ufdl",
                possibleExtensions: [
                    "ufd",
                    "ufdl",
                ]
            )
        }

        public static func vndUicOsdmJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.uic.osdm",
                    suffix: "json"
                )
            )
        }

        public static func vndUiqTheme() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uiq.theme",
                possibleExtensions: [
                    "utz"
                ]
            )
        }

        public static func vndUmajin() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.umajin",
                possibleExtensions: [
                    "umj"
                ]
            )
        }

        public static func vndUnity() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.unity",
                possibleExtensions: [
                    "unityweb"
                ]
            )
        }

        public static func vndUomlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.uoml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "uoml",
                    "uo",
                ]
            )
        }

        public static func vndUplanetAlert() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.alert"
            )
        }

        public static func vndUplanetAlertWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.alert-wbxml"
            )
        }

        public static func vndUplanetBearerChoice() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.bearer-choice"
            )
        }

        public static func vndUplanetBearerChoiceWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.bearer-choice-wbxml"
            )
        }

        public static func vndUplanetCacheop() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.cacheop"
            )
        }

        public static func vndUplanetCacheopWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.cacheop-wbxml"
            )
        }

        public static func vndUplanetChannel() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.channel"
            )
        }

        public static func vndUplanetChannelWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.channel-wbxml"
            )
        }

        public static func vndUplanetList() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.list"
            )
        }

        public static func vndUplanetListWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.list-wbxml"
            )
        }

        public static func vndUplanetListcmd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.listcmd"
            )
        }

        public static func vndUplanetListcmdWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.listcmd-wbxml"
            )
        }

        public static func vndUplanetSignal() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uplanet.signal"
            )
        }

        public static func vndUriMap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.uri-map"
            )
        }

        public static func vndValveSourceMaterial() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.valve.source.material"
            )
        }

        public static func vndVcx() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vcx",
                possibleExtensions: [
                    "vcx"
                ]
            )
        }

        public static func vndVdStudy() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vd-study"
            )
        }

        public static func vndVectorworks() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vectorworks"
            )
        }

        public static func vndVelJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.vel",
                    suffix: "json"
                )
            )
        }

        public static func vndVeraisonTsmReportCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.veraison.tsm-report",
                    suffix: "cbor"
                )
            )
        }

        public static func vndVeraisonTsmReportJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.veraison.tsm-report",
                    suffix: "json"
                )
            )
        }

        public static func vndVerifierAttestationJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.verifier-attestation",
                    suffix: "jwt"
                )
            )
        }

        public static func vndVerimatrixVcas() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.verimatrix.vcas"
            )
        }

        public static func vndVeritoneAionJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.veritone.aion",
                    suffix: "json"
                )
            )
        }

        public static func vndVeryantThin() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.veryant.thin"
            )
        }

        public static func vndVesEncrypted() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.ves.encrypted"
            )
        }

        public static func vndVidsoftVidconference() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vidsoft.vidconference"
            )
        }

        public static func vndVisio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.visio",
                possibleExtensions: [
                    "vsd",
                    "vst",
                    "vss",
                    "vsw",
                    "vsdx",
                    "vtx",
                ]
            )
        }

        public static func vndVisionary() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.visionary",
                possibleExtensions: [
                    "vis"
                ]
            )
        }

        public static func vndVividenceScriptfile() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vividence.scriptfile"
            )
        }

        public static func vndVocalshaperVsp4() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vocalshaper.vsp4"
            )
        }

        public static func vndVsf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vsf",
                possibleExtensions: [
                    "vsf"
                ]
            )
        }

        public static func vndVuq() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.vuq"
            )
        }

        public static func vndWantverse() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wantverse"
            )
        }

        public static func vndWapSic() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.sic"
            )
        }

        public static func vndWapSlc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.slc"
            )
        }

        public static func vndWapWbxml() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wbxml",
                possibleExtensions: [
                    "wbxml"
                ]
            )
        }

        public static func vndWapWmlc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wmlc",
                possibleExtensions: [
                    "wmlc"
                ]
            )
        }

        public static func vndWapWmlscriptc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wap.wmlscriptc",
                possibleExtensions: [
                    "wmlsc"
                ]
            )
        }

        public static func vndWasmflowWafl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wasmflow.wafl"
            )
        }

        public static func vndWebturbo() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.webturbo",
                possibleExtensions: [
                    "wtb"
                ]
            )
        }

        public static func vndWfaDpp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wfa.dpp"
            )
        }

        public static func vndWfaP2p() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wfa.p2p"
            )
        }

        public static func vndWfaWsc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wfa.wsc"
            )
        }

        public static func vndWindowsDevicepairing() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.windows.devicepairing"
            )
        }

        public static func vndWmap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wmap"
            )
        }

        public static func vndWmc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wmc"
            )
        }

        public static func vndWmfBootstrap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wmf.bootstrap"
            )
        }

        public static func vndWolframMathematica() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wolfram.mathematica"
            )
        }

        public static func vndWolframMathematicaPackage() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wolfram.mathematica.package"
            )
        }

        public static func vndWolframPlayer() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wolfram.player",
                possibleExtensions: [
                    "nbp"
                ]
            )
        }

        public static func vndWordlift() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wordlift"
            )
        }

        public static func vndWordperfect() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wordperfect",
                possibleExtensions: [
                    "wpd"
                ]
            )
        }

        public static func vndWqd() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wqd",
                possibleExtensions: [
                    "wqd"
                ]
            )
        }

        public static func vndWrqHp3000Labelled() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wrq-hp3000-labelled"
            )
        }

        public static func vndWtStf() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wt.stf",
                possibleExtensions: [
                    "stf"
                ]
            )
        }

        public static func vndWvCspWbxml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.wv.csp",
                    suffix: "wbxml"
                )
            )
        }

        public static func vndWvCspXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.wv.csp",
                    suffix: "xml"
                )
            )
        }

        public static func vndWvSspXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.wv.ssp",
                    suffix: "xml"
                )
            )
        }

        public static func vndXacmlJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.xacml",
                    suffix: "json"
                )
            )
        }

        public static func vndXara() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xara",
                possibleExtensions: [
                    "xar"
                ]
            )
        }

        public static func vndXarinCpj() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xarin.cpj"
            )
        }

        public static func vndXecretsEncrypted() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xecrets-encrypted"
            )
        }

        public static func vndXfdl() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xfdl",
                possibleExtensions: [
                    "xfdl"
                ]
            )
        }

        public static func vndXfdlWebform() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xfdl.webform"
            )
        }

        public static func vndXmiXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.xmi",
                    suffix: "xml"
                )
            )
        }

        public static func vndXmpieCpkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xmpie.cpkg"
            )
        }

        public static func vndXmpieDpkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xmpie.dpkg"
            )
        }

        public static func vndXmpiePlan() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xmpie.plan"
            )
        }

        public static func vndXmpiePpkg() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xmpie.ppkg"
            )
        }

        public static func vndXmpieXlim() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.xmpie.xlim"
            )
        }

        public static func vndYamahaHvDic() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.hv-dic",
                possibleExtensions: [
                    "hvd"
                ]
            )
        }

        public static func vndYamahaHvScript() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.hv-script",
                possibleExtensions: [
                    "hvs"
                ]
            )
        }

        public static func vndYamahaHvVoice() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.hv-voice",
                possibleExtensions: [
                    "hvp"
                ]
            )
        }

        public static func vndYamahaOpenscoreformat() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.openscoreformat",
                possibleExtensions: [
                    "osf"
                ]
            )
        }

        public static func vndYamahaOpenscoreformatOsfpvgXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.yamaha.openscoreformat.osfpvg",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "osfpvg"
                ]
            )
        }

        public static func vndYamahaRemoteSetup() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.remote-setup"
            )
        }

        public static func vndYamahaSmafAudio() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.smaf-audio",
                possibleExtensions: [
                    "saf"
                ]
            )
        }

        public static func vndYamahaSmafPhrase() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.smaf-phrase",
                possibleExtensions: [
                    "spf"
                ]
            )
        }

        public static func vndYamahaThroughNgn() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.through-ngn"
            )
        }

        public static func vndYamahaTunnelUdpencap() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yamaha.tunnel-udpencap"
            )
        }

        public static func vndYaoweme() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yaoweme"
            )
        }

        public static func vndYellowriverCustomMenu() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.yellowriver-custom-menu",
                possibleExtensions: [
                    "cmp"
                ]
            )
        }

        public static func vndZul() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.zul",
                possibleExtensions: [
                    "zir",
                    "zirz",
                ]
            )
        }

        public static func vndZzazzDeckXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vnd.zzazz.deck",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "zaz"
                ]
            )
        }

        public static func voicexmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "voicexml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "vxml"
                ]
            )
        }

        public static func voucherCmsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "voucher-cms",
                    suffix: "json"
                )
            )
        }

        public static func voucherJwsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "voucher-jws",
                    suffix: "json"
                )
            )
        }

        public static func vp() -> MediaType {
            .init(
                type: name,
                subtype: "vp"
            )
        }

        public static func vpCose() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vp",
                    suffix: "cose"
                )
            )
        }

        public static func vpJwt() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "vp",
                    suffix: "jwt"
                )
            )
        }

        public static func vqRtcpxr() -> MediaType {
            .init(
                type: name,
                subtype: "vq-rtcpxr"
            )
        }

        public static func wasm() -> MediaType {
            .init(
                type: name,
                subtype: "wasm",
                possibleExtensions: [
                    "wasm"
                ]
            )
        }

        public static func watcherinfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "watcherinfo",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "wif"
                ]
            )
        }

        public static func webpushOptionsJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "webpush-options",
                    suffix: "json"
                )
            )
        }

        public static func whoisppQuery() -> MediaType {
            .init(
                type: name,
                subtype: "whoispp-query"
            )
        }

        public static func whoisppResponse() -> MediaType {
            .init(
                type: name,
                subtype: "whoispp-response"
            )
        }

        public static func widget() -> MediaType {
            .init(
                type: name,
                subtype: "widget",
                possibleExtensions: [
                    "wgt"
                ]
            )
        }

        public static func winhlp() -> MediaType {
            .init(
                type: name,
                subtype: "winhlp",
                possibleExtensions: [
                    "hlp"
                ]
            )
        }

        public static func wita() -> MediaType {
            .init(
                type: name,
                subtype: "wita"
            )
        }

        public static func wordperfect51() -> MediaType {
            .init(
                type: name,
                subtype: "wordperfect5.1"
            )
        }

        public static func wsdlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "wsdl",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "wsdl"
                ]
            )
        }

        public static func wspolicyXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "wspolicy",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "wspolicy"
                ]
            )
        }

        public static func x7zCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-7z-compressed",
                possibleExtensions: [
                    "7z"
                ]
            )
        }

        public static func xAbiword() -> MediaType {
            .init(
                type: name,
                subtype: "x-abiword",
                possibleExtensions: [
                    "abw"
                ]
            )
        }

        public static func xAceCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-ace-compressed",
                possibleExtensions: [
                    "ace"
                ]
            )
        }

        public static func xAmf() -> MediaType {
            .init(
                type: name,
                subtype: "x-amf"
            )
        }

        public static func xAppleDiskimage() -> MediaType {
            .init(
                type: name,
                subtype: "x-apple-diskimage",
                possibleExtensions: [
                    "dmg"
                ]
            )
        }

        public static func xArj() -> MediaType {
            .init(
                type: name,
                subtype: "x-arj",
                possibleExtensions: [
                    "arj"
                ]
            )
        }

        public static func xAuthorwareBin() -> MediaType {
            .init(
                type: name,
                subtype: "x-authorware-bin",
                possibleExtensions: [
                    "aab",
                    "x32",
                    "u32",
                    "vox",
                ]
            )
        }

        public static func xAuthorwareMap() -> MediaType {
            .init(
                type: name,
                subtype: "x-authorware-map",
                possibleExtensions: [
                    "aam"
                ]
            )
        }

        public static func xAuthorwareSeg() -> MediaType {
            .init(
                type: name,
                subtype: "x-authorware-seg",
                possibleExtensions: [
                    "aas"
                ]
            )
        }

        public static func xBcpio() -> MediaType {
            .init(
                type: name,
                subtype: "x-bcpio",
                possibleExtensions: [
                    "bcpio"
                ]
            )
        }

        public static func xBdoc() -> MediaType {
            .init(
                type: name,
                subtype: "x-bdoc",
                possibleExtensions: [
                    "bdoc"
                ]
            )
        }

        public static func xBittorrent() -> MediaType {
            .init(
                type: name,
                subtype: "x-bittorrent",
                possibleExtensions: [
                    "torrent"
                ]
            )
        }

        public static func xBlender() -> MediaType {
            .init(
                type: name,
                subtype: "x-blender",
                possibleExtensions: [
                    "blend"
                ]
            )
        }

        public static func xBlorb() -> MediaType {
            .init(
                type: name,
                subtype: "x-blorb",
                possibleExtensions: [
                    "blb",
                    "blorb",
                ]
            )
        }

        public static func xBzip() -> MediaType {
            .init(
                type: name,
                subtype: "x-bzip",
                possibleExtensions: [
                    "bz"
                ]
            )
        }

        public static func xBzip2() -> MediaType {
            .init(
                type: name,
                subtype: "x-bzip2",
                possibleExtensions: [
                    "bz2",
                    "boz",
                ]
            )
        }

        public static func xCbr() -> MediaType {
            .init(
                type: name,
                subtype: "x-cbr",
                possibleExtensions: [
                    "cbr",
                    "cba",
                    "cbt",
                    "cbz",
                    "cb7",
                ]
            )
        }

        public static func xCdlink() -> MediaType {
            .init(
                type: name,
                subtype: "x-cdlink",
                possibleExtensions: [
                    "vcd"
                ]
            )
        }

        public static func xCfsCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-cfs-compressed",
                possibleExtensions: [
                    "cfs"
                ]
            )
        }

        public static func xChat() -> MediaType {
            .init(
                type: name,
                subtype: "x-chat",
                possibleExtensions: [
                    "chat"
                ]
            )
        }

        public static func xChessPgn() -> MediaType {
            .init(
                type: name,
                subtype: "x-chess-pgn",
                possibleExtensions: [
                    "pgn"
                ]
            )
        }

        public static func xChromeExtension() -> MediaType {
            .init(
                type: name,
                subtype: "x-chrome-extension",
                possibleExtensions: [
                    "crx"
                ]
            )
        }

        public static func xCocoa() -> MediaType {
            .init(
                type: name,
                subtype: "x-cocoa",
                possibleExtensions: [
                    "cco"
                ]
            )
        }

        public static func xCompress() -> MediaType {
            .init(
                type: name,
                subtype: "x-compress"
            )
        }

        public static func xCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-compressed",
                possibleExtensions: [
                    "rar"
                ]
            )
        }

        public static func xConference() -> MediaType {
            .init(
                type: name,
                subtype: "x-conference",
                possibleExtensions: [
                    "nsc"
                ]
            )
        }

        public static func xCpio() -> MediaType {
            .init(
                type: name,
                subtype: "x-cpio",
                possibleExtensions: [
                    "cpio"
                ]
            )
        }

        public static func xCsh() -> MediaType {
            .init(
                type: name,
                subtype: "x-csh",
                possibleExtensions: [
                    "csh"
                ]
            )
        }

        public static func xDeb() -> MediaType {
            .init(
                type: name,
                subtype: "x-deb"
            )
        }

        public static func xDebianPackage() -> MediaType {
            .init(
                type: name,
                subtype: "x-debian-package",
                possibleExtensions: [
                    "deb",
                    "udeb",
                ]
            )
        }

        public static func xDgcCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-dgc-compressed",
                possibleExtensions: [
                    "dgc"
                ]
            )
        }

        public static func xDirector() -> MediaType {
            .init(
                type: name,
                subtype: "x-director",
                possibleExtensions: [
                    "dir",
                    "dcr",
                    "dxr",
                    "cst",
                    "cct",
                    "cxt",
                    "w3d",
                    "fgd",
                    "swa",
                ]
            )
        }

        public static func xDoom() -> MediaType {
            .init(
                type: name,
                subtype: "x-doom",
                possibleExtensions: [
                    "wad"
                ]
            )
        }

        public static func xDtbncxXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-dtbncx",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "ncx"
                ]
            )
        }

        public static func xDtbookXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-dtbook",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "dtb"
                ]
            )
        }

        public static func xDtbresourceXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-dtbresource",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "res"
                ]
            )
        }

        public static func xDvi() -> MediaType {
            .init(
                type: name,
                subtype: "x-dvi",
                possibleExtensions: [
                    "dvi"
                ]
            )
        }

        public static func xEnvoy() -> MediaType {
            .init(
                type: name,
                subtype: "x-envoy",
                possibleExtensions: [
                    "evy"
                ]
            )
        }

        public static func xEva() -> MediaType {
            .init(
                type: name,
                subtype: "x-eva",
                possibleExtensions: [
                    "eva"
                ]
            )
        }

        public static func xFontBdf() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-bdf",
                possibleExtensions: [
                    "bdf"
                ]
            )
        }

        public static func xFontDos() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-dos"
            )
        }

        public static func xFontFramemaker() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-framemaker"
            )
        }

        public static func xFontGhostscript() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-ghostscript",
                possibleExtensions: [
                    "gsf"
                ]
            )
        }

        public static func xFontLibgrx() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-libgrx"
            )
        }

        public static func xFontLinuxPsf() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-linux-psf",
                possibleExtensions: [
                    "psf"
                ]
            )
        }

        public static func xFontPcf() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-pcf",
                possibleExtensions: [
                    "pcf"
                ]
            )
        }

        public static func xFontSnf() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-snf",
                possibleExtensions: [
                    "snf"
                ]
            )
        }

        public static func xFontSpeedo() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-speedo"
            )
        }

        public static func xFontSunosNews() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-sunos-news"
            )
        }

        public static func xFontType1() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-type1",
                possibleExtensions: [
                    "pfa",
                    "pfb",
                    "pfm",
                    "afm",
                ]
            )
        }

        public static func xFontVfont() -> MediaType {
            .init(
                type: name,
                subtype: "x-font-vfont"
            )
        }

        public static func xFreearc() -> MediaType {
            .init(
                type: name,
                subtype: "x-freearc",
                possibleExtensions: [
                    "arc"
                ]
            )
        }

        public static func xFuturesplash() -> MediaType {
            .init(
                type: name,
                subtype: "x-futuresplash",
                possibleExtensions: [
                    "spl"
                ]
            )
        }

        public static func xGcaCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-gca-compressed",
                possibleExtensions: [
                    "gca"
                ]
            )
        }

        public static func xGlulx() -> MediaType {
            .init(
                type: name,
                subtype: "x-glulx",
                possibleExtensions: [
                    "ulx"
                ]
            )
        }

        public static func xGnumeric() -> MediaType {
            .init(
                type: name,
                subtype: "x-gnumeric",
                possibleExtensions: [
                    "gnumeric"
                ]
            )
        }

        public static func xGrampsXml() -> MediaType {
            .init(
                type: name,
                subtype: "x-gramps-xml",
                possibleExtensions: [
                    "gramps"
                ]
            )
        }

        public static func xGtar() -> MediaType {
            .init(
                type: name,
                subtype: "x-gtar",
                possibleExtensions: [
                    "gtar"
                ]
            )
        }

        public static func xGzip() -> MediaType {
            .init(
                type: name,
                subtype: "x-gzip"
            )
        }

        public static func xHdf() -> MediaType {
            .init(
                type: name,
                subtype: "x-hdf",
                possibleExtensions: [
                    "hdf"
                ]
            )
        }

        public static func xHttpdPhp() -> MediaType {
            .init(
                type: name,
                subtype: "x-httpd-php",
                possibleExtensions: [
                    "php"
                ]
            )
        }

        public static func xInstallInstructions() -> MediaType {
            .init(
                type: name,
                subtype: "x-install-instructions",
                possibleExtensions: [
                    "install"
                ]
            )
        }

        public static func xIpynbJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-ipynb",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "ipynb"
                ]
            )
        }

        public static func xIso9660Image() -> MediaType {
            .init(
                type: name,
                subtype: "x-iso9660-image",
                possibleExtensions: [
                    "iso"
                ]
            )
        }

        public static func xIworkKeynoteSffkey() -> MediaType {
            .init(
                type: name,
                subtype: "x-iwork-keynote-sffkey",
                possibleExtensions: [
                    "key"
                ]
            )
        }

        public static func xIworkNumbersSffnumbers() -> MediaType {
            .init(
                type: name,
                subtype: "x-iwork-numbers-sffnumbers",
                possibleExtensions: [
                    "numbers"
                ]
            )
        }

        public static func xIworkPagesSffpages() -> MediaType {
            .init(
                type: name,
                subtype: "x-iwork-pages-sffpages",
                possibleExtensions: [
                    "pages"
                ]
            )
        }

        public static func xJavaArchiveDiff() -> MediaType {
            .init(
                type: name,
                subtype: "x-java-archive-diff",
                possibleExtensions: [
                    "jardiff"
                ]
            )
        }

        public static func xJavaJnlpFile() -> MediaType {
            .init(
                type: name,
                subtype: "x-java-jnlp-file",
                possibleExtensions: [
                    "jnlp"
                ]
            )
        }

        public static func xJavascript() -> MediaType {
            .init(
                type: name,
                subtype: "x-javascript"
            )
        }

        public static func xKeepass2() -> MediaType {
            .init(
                type: name,
                subtype: "x-keepass2",
                possibleExtensions: [
                    "kdbx"
                ]
            )
        }

        public static func xLatex() -> MediaType {
            .init(
                type: name,
                subtype: "x-latex",
                possibleExtensions: [
                    "latex"
                ]
            )
        }

        public static func xLuaBytecode() -> MediaType {
            .init(
                type: name,
                subtype: "x-lua-bytecode",
                possibleExtensions: [
                    "luac"
                ]
            )
        }

        public static func xLzhCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-lzh-compressed",
                possibleExtensions: [
                    "lzh",
                    "lha",
                ]
            )
        }

        public static func xMakeself() -> MediaType {
            .init(
                type: name,
                subtype: "x-makeself",
                possibleExtensions: [
                    "run"
                ]
            )
        }

        public static func xMie() -> MediaType {
            .init(
                type: name,
                subtype: "x-mie",
                possibleExtensions: [
                    "mie"
                ]
            )
        }

        public static func xMobipocketEbook() -> MediaType {
            .init(
                type: name,
                subtype: "x-mobipocket-ebook",
                possibleExtensions: [
                    "prc",
                    "mobi",
                ]
            )
        }

        public static func xMpegurl() -> MediaType {
            .init(
                type: name,
                subtype: "x-mpegurl"
            )
        }

        public static func xMsApplication() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-application",
                possibleExtensions: [
                    "application"
                ]
            )
        }

        public static func xMsShortcut() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-shortcut",
                possibleExtensions: [
                    "lnk"
                ]
            )
        }

        public static func xMsWmd() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wmd",
                possibleExtensions: [
                    "wmd"
                ]
            )
        }

        public static func xMsWmz() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-wmz",
                possibleExtensions: [
                    "wmz"
                ]
            )
        }

        public static func xMsXbap() -> MediaType {
            .init(
                type: name,
                subtype: "x-ms-xbap",
                possibleExtensions: [
                    "xbap"
                ]
            )
        }

        public static func xMsaccess() -> MediaType {
            .init(
                type: name,
                subtype: "x-msaccess",
                possibleExtensions: [
                    "mdb"
                ]
            )
        }

        public static func xMsbinder() -> MediaType {
            .init(
                type: name,
                subtype: "x-msbinder",
                possibleExtensions: [
                    "obd"
                ]
            )
        }

        public static func xMscardfile() -> MediaType {
            .init(
                type: name,
                subtype: "x-mscardfile",
                possibleExtensions: [
                    "crd"
                ]
            )
        }

        public static func xMsclip() -> MediaType {
            .init(
                type: name,
                subtype: "x-msclip",
                possibleExtensions: [
                    "clp"
                ]
            )
        }

        public static func xMsdosProgram() -> MediaType {
            .init(
                type: name,
                subtype: "x-msdos-program",
                possibleExtensions: [
                    "exe"
                ]
            )
        }

        public static func xMsdownload() -> MediaType {
            .init(
                type: name,
                subtype: "x-msdownload",
                possibleExtensions: [
                    "exe",
                    "dll",
                    "com",
                    "bat",
                    "msi",
                ]
            )
        }

        public static func xMsmediaview() -> MediaType {
            .init(
                type: name,
                subtype: "x-msmediaview",
                possibleExtensions: [
                    "mvb",
                    "m13",
                    "m14",
                ]
            )
        }

        public static func xMsmetafile() -> MediaType {
            .init(
                type: name,
                subtype: "x-msmetafile",
                possibleExtensions: [
                    "wmf",
                    "wmz",
                    "emf",
                    "emz",
                ]
            )
        }

        public static func xMsmoney() -> MediaType {
            .init(
                type: name,
                subtype: "x-msmoney",
                possibleExtensions: [
                    "mny"
                ]
            )
        }

        public static func xMspublisher() -> MediaType {
            .init(
                type: name,
                subtype: "x-mspublisher",
                possibleExtensions: [
                    "pub"
                ]
            )
        }

        public static func xMsschedule() -> MediaType {
            .init(
                type: name,
                subtype: "x-msschedule",
                possibleExtensions: [
                    "scd"
                ]
            )
        }

        public static func xMsterminal() -> MediaType {
            .init(
                type: name,
                subtype: "x-msterminal",
                possibleExtensions: [
                    "trm"
                ]
            )
        }

        public static func xMswrite() -> MediaType {
            .init(
                type: name,
                subtype: "x-mswrite",
                possibleExtensions: [
                    "wri"
                ]
            )
        }

        public static func xNetcdf() -> MediaType {
            .init(
                type: name,
                subtype: "x-netcdf",
                possibleExtensions: [
                    "nc",
                    "cdf",
                ]
            )
        }

        public static func xNsProxyAutoconfig() -> MediaType {
            .init(
                type: name,
                subtype: "x-ns-proxy-autoconfig",
                possibleExtensions: [
                    "pac"
                ]
            )
        }

        public static func xNzb() -> MediaType {
            .init(
                type: name,
                subtype: "x-nzb",
                possibleExtensions: [
                    "nzb"
                ]
            )
        }

        public static func xPerl() -> MediaType {
            .init(
                type: name,
                subtype: "x-perl",
                possibleExtensions: [
                    "pl",
                    "pm",
                ]
            )
        }

        public static func xPilot() -> MediaType {
            .init(
                type: name,
                subtype: "x-pilot",
                possibleExtensions: [
                    "prc",
                    "pdb",
                ]
            )
        }

        public static func xPkcs12() -> MediaType {
            .init(
                type: name,
                subtype: "x-pkcs12",
                possibleExtensions: [
                    "p12",
                    "pfx",
                ]
            )
        }

        public static func xPkcs7Certificates() -> MediaType {
            .init(
                type: name,
                subtype: "x-pkcs7-certificates",
                possibleExtensions: [
                    "p7b",
                    "spc",
                ]
            )
        }

        public static func xPkcs7Certreqresp() -> MediaType {
            .init(
                type: name,
                subtype: "x-pkcs7-certreqresp",
                possibleExtensions: [
                    "p7r"
                ]
            )
        }

        public static func xPkiMessage() -> MediaType {
            .init(
                type: name,
                subtype: "x-pki-message"
            )
        }

        public static func xRarCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-rar-compressed",
                possibleExtensions: [
                    "rar"
                ]
            )
        }

        public static func xRedhatPackageManager() -> MediaType {
            .init(
                type: name,
                subtype: "x-redhat-package-manager",
                possibleExtensions: [
                    "rpm"
                ]
            )
        }

        public static func xResearchInfoSystems() -> MediaType {
            .init(
                type: name,
                subtype: "x-research-info-systems",
                possibleExtensions: [
                    "ris"
                ]
            )
        }

        public static func xSea() -> MediaType {
            .init(
                type: name,
                subtype: "x-sea",
                possibleExtensions: [
                    "sea"
                ]
            )
        }

        public static func xSh() -> MediaType {
            .init(
                type: name,
                subtype: "x-sh",
                possibleExtensions: [
                    "sh"
                ]
            )
        }

        public static func xShar() -> MediaType {
            .init(
                type: name,
                subtype: "x-shar",
                possibleExtensions: [
                    "shar"
                ]
            )
        }

        public static func xShockwaveFlash() -> MediaType {
            .init(
                type: name,
                subtype: "x-shockwave-flash",
                possibleExtensions: [
                    "swf"
                ]
            )
        }

        public static func xSilverlightApp() -> MediaType {
            .init(
                type: name,
                subtype: "x-silverlight-app",
                possibleExtensions: [
                    "xap"
                ]
            )
        }

        public static func xSql() -> MediaType {
            .init(
                type: name,
                subtype: "x-sql",
                possibleExtensions: [
                    "sql"
                ]
            )
        }

        public static func xStuffit() -> MediaType {
            .init(
                type: name,
                subtype: "x-stuffit",
                possibleExtensions: [
                    "sit"
                ]
            )
        }

        public static func xStuffitx() -> MediaType {
            .init(
                type: name,
                subtype: "x-stuffitx",
                possibleExtensions: [
                    "sitx"
                ]
            )
        }

        public static func xSubrip() -> MediaType {
            .init(
                type: name,
                subtype: "x-subrip",
                possibleExtensions: [
                    "srt"
                ]
            )
        }

        public static func xSv4cpio() -> MediaType {
            .init(
                type: name,
                subtype: "x-sv4cpio",
                possibleExtensions: [
                    "sv4cpio"
                ]
            )
        }

        public static func xSv4crc() -> MediaType {
            .init(
                type: name,
                subtype: "x-sv4crc",
                possibleExtensions: [
                    "sv4crc"
                ]
            )
        }

        public static func xT3vmImage() -> MediaType {
            .init(
                type: name,
                subtype: "x-t3vm-image",
                possibleExtensions: [
                    "t3"
                ]
            )
        }

        public static func xTads() -> MediaType {
            .init(
                type: name,
                subtype: "x-tads",
                possibleExtensions: [
                    "gam"
                ]
            )
        }

        public static func xTar() -> MediaType {
            .init(
                type: name,
                subtype: "x-tar",
                possibleExtensions: [
                    "tar"
                ]
            )
        }

        public static func xTcl() -> MediaType {
            .init(
                type: name,
                subtype: "x-tcl",
                possibleExtensions: [
                    "tcl",
                    "tk",
                ]
            )
        }

        public static func xTex() -> MediaType {
            .init(
                type: name,
                subtype: "x-tex",
                possibleExtensions: [
                    "tex"
                ]
            )
        }

        public static func xTexTfm() -> MediaType {
            .init(
                type: name,
                subtype: "x-tex-tfm",
                possibleExtensions: [
                    "tfm"
                ]
            )
        }

        public static func xTexinfo() -> MediaType {
            .init(
                type: name,
                subtype: "x-texinfo",
                possibleExtensions: [
                    "texinfo",
                    "texi",
                ]
            )
        }

        public static func xTgif() -> MediaType {
            .init(
                type: name,
                subtype: "x-tgif",
                possibleExtensions: [
                    "obj"
                ]
            )
        }

        public static func xUstar() -> MediaType {
            .init(
                type: name,
                subtype: "x-ustar",
                possibleExtensions: [
                    "ustar"
                ]
            )
        }

        public static func xVirtualboxHdd() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-hdd",
                possibleExtensions: [
                    "hdd"
                ]
            )
        }

        public static func xVirtualboxOva() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-ova",
                possibleExtensions: [
                    "ova"
                ]
            )
        }

        public static func xVirtualboxOvf() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-ovf",
                possibleExtensions: [
                    "ovf"
                ]
            )
        }

        public static func xVirtualboxVbox() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-vbox",
                possibleExtensions: [
                    "vbox"
                ]
            )
        }

        public static func xVirtualboxVboxExtpack() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-vbox-extpack",
                possibleExtensions: [
                    "vbox-extpack"
                ]
            )
        }

        public static func xVirtualboxVdi() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-vdi",
                possibleExtensions: [
                    "vdi"
                ]
            )
        }

        public static func xVirtualboxVhd() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-vhd",
                possibleExtensions: [
                    "vhd"
                ]
            )
        }

        public static func xVirtualboxVmdk() -> MediaType {
            .init(
                type: name,
                subtype: "x-virtualbox-vmdk",
                possibleExtensions: [
                    "vmdk"
                ]
            )
        }

        public static func xWaisSource() -> MediaType {
            .init(
                type: name,
                subtype: "x-wais-source",
                possibleExtensions: [
                    "src"
                ]
            )
        }

        public static func xWebAppManifestJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-web-app-manifest",
                    suffix: "json"
                ),
                possibleExtensions: [
                    "webapp"
                ]
            )
        }

        public static func xWwwFormUrlencoded() -> MediaType {
            .init(
                type: name,
                subtype: "x-www-form-urlencoded"
            )
        }

        public static func xX509CaCert() -> MediaType {
            .init(
                type: name,
                subtype: "x-x509-ca-cert",
                possibleExtensions: [
                    "der",
                    "crt",
                    "pem",
                ]
            )
        }

        public static func xX509CaRaCert() -> MediaType {
            .init(
                type: name,
                subtype: "x-x509-ca-ra-cert"
            )
        }

        public static func xX509NextCaCert() -> MediaType {
            .init(
                type: name,
                subtype: "x-x509-next-ca-cert"
            )
        }

        public static func xXfig() -> MediaType {
            .init(
                type: name,
                subtype: "x-xfig",
                possibleExtensions: [
                    "fig"
                ]
            )
        }

        public static func xXliffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "x-xliff",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xlf"
                ]
            )
        }

        public static func xXpinstall() -> MediaType {
            .init(
                type: name,
                subtype: "x-xpinstall",
                possibleExtensions: [
                    "xpi"
                ]
            )
        }

        public static func xXz() -> MediaType {
            .init(
                type: name,
                subtype: "x-xz",
                possibleExtensions: [
                    "xz"
                ]
            )
        }

        public static func xZipCompressed() -> MediaType {
            .init(
                type: name,
                subtype: "x-zip-compressed",
                possibleExtensions: [
                    "zip"
                ]
            )
        }

        public static func xZmachine() -> MediaType {
            .init(
                type: name,
                subtype: "x-zmachine",
                possibleExtensions: [
                    "z1",
                    "z2",
                    "z3",
                    "z4",
                    "z5",
                    "z6",
                    "z7",
                    "z8",
                ]
            )
        }

        public static func x400Bp() -> MediaType {
            .init(
                type: name,
                subtype: "x400-bp"
            )
        }

        public static func xacmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xacml",
                    suffix: "xml"
                )
            )
        }

        public static func xamlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xaml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xaml"
                ]
            )
        }

        public static func xcapAttXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-att",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xav"
                ]
            )
        }

        public static func xcapCapsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-caps",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xca"
                ]
            )
        }

        public static func xcapDiffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-diff",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xdf"
                ]
            )
        }

        public static func xcapElXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-el",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xel"
                ]
            )
        }

        public static func xcapErrorXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-error",
                    suffix: "xml"
                )
            )
        }

        public static func xcapNsXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcap-ns",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xns"
                ]
            )
        }

        public static func xconConferenceInfoXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcon-conference-info",
                    suffix: "xml"
                )
            )
        }

        public static func xconConferenceInfoDiffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xcon-conference-info-diff",
                    suffix: "xml"
                )
            )
        }

        public static func xencXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xenc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xenc"
                ]
            )
        }

        public static func xfdf() -> MediaType {
            .init(
                type: name,
                subtype: "xfdf",
                possibleExtensions: [
                    "xfdf"
                ]
            )
        }

        public static func xhtmlXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xhtml",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xhtml",
                    "xht",
                ]
            )
        }

        public static func xhtmlVoiceXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xhtml-voice",
                    suffix: "xml"
                )
            )
        }

        public static func xliffXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xliff",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xlf"
                ]
            )
        }

        public static func xml() -> MediaType {
            .init(
                type: name,
                subtype: "xml",
                possibleExtensions: [
                    "xml",
                    "xsl",
                    "xsd",
                    "rng",
                ]
            )
        }

        public static func xmlDtd() -> MediaType {
            .init(
                type: name,
                subtype: "xml-dtd",
                possibleExtensions: [
                    "dtd"
                ]
            )
        }

        public static func xmlExternalParsedEntity() -> MediaType {
            .init(
                type: name,
                subtype: "xml-external-parsed-entity"
            )
        }

        public static func xmlPatchXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xml-patch",
                    suffix: "xml"
                )
            )
        }

        public static func xmppXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xmpp",
                    suffix: "xml"
                )
            )
        }

        public static func xopXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xop",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xop"
                ]
            )
        }

        public static func xprocXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xproc",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xpl"
                ]
            )
        }

        public static func xsltXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xslt",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xsl",
                    "xslt",
                ]
            )
        }

        public static func xspfXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xspf",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "xspf"
                ]
            )
        }

        public static func xvXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "xv",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "mxml",
                    "xhvml",
                    "xvml",
                    "xvm",
                ]
            )
        }

        public static func yaml() -> MediaType {
            .init(
                type: name,
                subtype: "yaml"
            )
        }

        public static func yang() -> MediaType {
            .init(
                type: name,
                subtype: "yang",
                possibleExtensions: [
                    "yang"
                ]
            )
        }

        public static func yangDataCbor() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-data",
                    suffix: "cbor"
                )
            )
        }

        public static func yangDataJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-data",
                    suffix: "json"
                )
            )
        }

        public static func yangDataXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-data",
                    suffix: "xml"
                )
            )
        }

        public static func yangPatchJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-patch",
                    suffix: "json"
                )
            )
        }

        public static func yangPatchXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-patch",
                    suffix: "xml"
                )
            )
        }

        public static func yangSidJson() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yang-sid",
                    suffix: "json"
                )
            )
        }

        public static func yinXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "yin",
                    suffix: "xml"
                ),
                possibleExtensions: [
                    "yin"
                ]
            )
        }

        public static func zip() -> MediaType {
            .init(
                type: name,
                subtype: "zip",
                possibleExtensions: [
                    "zip"
                ]
            )
        }

        public static func zipDotlottie() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "zip",
                    suffix: "dotlottie"
                ),
                possibleExtensions: [
                    "lottie"
                ]
            )
        }

        public static func zlib() -> MediaType {
            .init(
                type: name,
                subtype: "zlib"
            )
        }

        public static func zstd() -> MediaType {
            .init(
                type: name,
                subtype: "zstd"
            )
        }

    }

}
