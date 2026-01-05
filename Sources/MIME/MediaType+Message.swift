extension MediaType {

    public enum Message {

        static let name: String = "message"

        public static func bhttp() -> MediaType {
            .init(
                type: name,
                subtype: "bhttp"
            )
        }

        public static func cpim() -> MediaType {
            .init(
                type: name,
                subtype: "cpim"
            )
        }

        public static func deliveryStatus() -> MediaType {
            .init(
                type: name,
                subtype: "delivery-status"
            )
        }

        public static func dispositionNotification() -> MediaType {
            .init(
                type: name,
                subtype: "disposition-notification",
                possibleExtensions: [
                    "disposition-notification"
                ]
            )
        }

        public static func externalBody() -> MediaType {
            .init(
                type: name,
                subtype: "external-body"
            )
        }

        public static func feedbackReport() -> MediaType {
            .init(
                type: name,
                subtype: "feedback-report"
            )
        }

        public static func global() -> MediaType {
            .init(
                type: name,
                subtype: "global",
                possibleExtensions: [
                    "u8msg"
                ]
            )
        }

        public static func globalDeliveryStatus() -> MediaType {
            .init(
                type: name,
                subtype: "global-delivery-status",
                possibleExtensions: [
                    "u8dsn"
                ]
            )
        }

        public static func globalDispositionNotification() -> MediaType {
            .init(
                type: name,
                subtype: "global-disposition-notification",
                possibleExtensions: [
                    "u8mdn"
                ]
            )
        }

        public static func globalHeaders() -> MediaType {
            .init(
                type: name,
                subtype: "global-headers",
                possibleExtensions: [
                    "u8hdr"
                ]
            )
        }

        public static func http() -> MediaType {
            .init(
                type: name,
                subtype: "http"
            )
        }

        public static func imdnXml() -> MediaType {
            .init(
                type: name,
                subtype: .init(
                    value: "imdn",
                    suffix: "xml"
                )
            )
        }

        public static func mls() -> MediaType {
            .init(
                type: name,
                subtype: "mls"
            )
        }

        public static func news() -> MediaType {
            .init(
                type: name,
                subtype: "news"
            )
        }

        public static func ohttpReq() -> MediaType {
            .init(
                type: name,
                subtype: "ohttp-req"
            )
        }

        public static func ohttpRes() -> MediaType {
            .init(
                type: name,
                subtype: "ohttp-res"
            )
        }

        public static func partial() -> MediaType {
            .init(
                type: name,
                subtype: "partial"
            )
        }

        public static func rfc822() -> MediaType {
            .init(
                type: name,
                subtype: "rfc822",
                possibleExtensions: [
                    "eml",
                    "mime",
                    "mht",
                    "mhtml",
                ]
            )
        }

        public static func sHttp() -> MediaType {
            .init(
                type: name,
                subtype: "s-http"
            )
        }

        public static func sip() -> MediaType {
            .init(
                type: name,
                subtype: "sip"
            )
        }

        public static func sipfrag() -> MediaType {
            .init(
                type: name,
                subtype: "sipfrag"
            )
        }

        public static func trackingStatus() -> MediaType {
            .init(
                type: name,
                subtype: "tracking-status"
            )
        }

        public static func vndSiSimp() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.si.simp"
            )
        }

        public static func vndWfaWsc() -> MediaType {
            .init(
                type: name,
                subtype: "vnd.wfa.wsc",
                possibleExtensions: [
                    "wsc"
                ]
            )
        }

    }

}
