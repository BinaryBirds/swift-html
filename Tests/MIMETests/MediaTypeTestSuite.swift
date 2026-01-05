import Testing

@testable import MIME

@Suite
struct MediaTypeTestSuite {

    @Test
    func definition() async throws {

        let json = MediaType.Application.json()
        #expect(json.rawValue == "application/json")

        let formData = MediaType.Multipart.formData(boundary: "foo")
        #expect(formData.rawValue == "multipart/form-data; boundary=foo")

        let css = MediaType.Text.css()
        #expect(css.rawValue == "text/css")
    }
}
