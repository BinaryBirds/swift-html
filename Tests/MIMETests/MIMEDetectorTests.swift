import Testing

@testable import MIME

@Suite
struct MIMETests {

    @Test
    func standardTypes() async throws {
        let mime = MIMEDetector(.standard)

        #expect("text/html" == mime.getType(for: "html"))
        #expect("html" == mime.getExtension(for: "text/html"))

        #expect("text/plain" == mime.getType(for: "txt"))
        #expect("txt" == mime.getExtension(for: "text/plain"))
    }

    @Test
    func nonStandardTypes() async throws {
        let nsMime = MIMEDetector(.nonStandard)

        #expect(nsMime.getType(for: "html") == nil)
        #expect(nsMime.getExtension(for: "text/html") == nil)

        #expect(nsMime.getType(for: "txt") == nil)
        #expect(nsMime.getExtension(for: "text/plain") == nil)
    }

    // MARK: - test differences

    //    MDN[aac] = audio/aac, mime[aac] = audio/x-aac
    //    MDN[js] = text/javascript, mime[js] = application/javascript
    //    MDN[mid] = audio/x-midi, mime[mid] = audio/midi
    //    MDN[midi] = audio/x-midi, mime[midi] = audio/midi
    //    MDN[mjs] = text/javascript, mime[mjs] = application/javascript
    //    MDN[opus] = audio/opus, mime[opus] = audio/ogg
    //    MDN[php] = application/php, mime[php] = application/x-httpd-php
    @Test
    func knownMDNExtensions() {
        let testCases = [
            "json": "application/json",
            "jsonld": "application/ld+json",
            "mid": "audio/midi",
            "midi": "audio/midi",
            "mjs": "application/javascript",
            "mp3": "audio/mpeg",
            "mp4": "video/mp4",
            "mpeg": "video/mpeg",
            "mpkg": "application/vnd.apple.installer+xml",
            "odp": "application/vnd.oasis.opendocument.presentation",
            "ods": "application/vnd.oasis.opendocument.spreadsheet",
            "odt": "application/vnd.oasis.opendocument.text",
            "oga": "audio/ogg",
            "ogv": "video/ogg",
            "ogx": "application/ogg",
            "opus": "audio/ogg",
            "otf": "font/otf",
            "png": "image/png",
            "pdf": "application/pdf",
            "php": "application/x-httpd-php",
            "ppt": "application/vnd.ms-powerpoint",
            "pptx":
                "application/vnd.openxmlformats-officedocument.presentationml.presentation",
            "rar": "application/vnd.rar",
            "rtf": "application/rtf",
            "sh": "application/x-sh",
            "svg": "image/svg+xml",
            "tar": "application/x-tar",
            "tif": "image/tiff",
            "tiff": "image/tiff",
            "ts": "video/mp2t",
            "ttf": "font/ttf",
            "txt": "text/plain",
            "vsd": "application/vnd.visio",
            "wav": "audio/wav",
            "weba": "audio/webm",
            "webm": "video/webm",
            "webp": "image/webp",
            "woff": "font/woff",
            "woff2": "font/woff2",
            "xhtml": "application/xhtml+xml",
            "xls": "application/vnd.ms-excel",
            "xlsx":
                "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
            "xml": "application/xml",
            "xul": "application/vnd.mozilla.xul+xml",
            "zip": "application/zip",
            "3gp": "video/3gpp",
            "3g2": "video/3gpp2",
            "7z": "application/x-7z-compressed",
        ]

        let mime = MIMEDetector()
        for (ext, expectation) in testCases {
            #expect(mime.getType(for: ext) == expectation)
        }
    }

    //      mime-types[exe] = application/x-msdos-program, mime[exe] = application/octet-stream
    //      mime-types[dll] = application/x-msdownload, mime[dll] = application/octet-stream
    //      mime-types[deb] = application/x-debian-package, mime[deb] = application/octet-stream
    //      mime-types[dmg] = application/x-apple-diskimage, mime[dmg] = application/octet-stream
    //      mime-types[iso] = application/x-iso9660-image, mime[iso] = application/octet-stream
    //      mime-types[msi] = application/x-msdownload, mime[msi] = application/octet-stream
    //      mime-types[wav] = audio/wave, mime[wav] = audio/wav
    //    func testExpected() {
    //        let def = Definition.nonStandard
    //        let mime = MIME(def)
    //        let values = def.values
    //
    //        for type in values.keys {
    //            for ext in values[type]! {
    //                let mimeType = mime.getType(for: ext)
    //                if mimeType != type {
    //                    print(mimeType, type)
    //                }
    //            }
    //        }
    //    }
}
