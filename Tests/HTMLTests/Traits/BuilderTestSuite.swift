import SGML
import Testing

@testable import HTML

@Suite
struct BuilderTestSuite {

    @Test
    func basics() async throws {
        let tag = P {
            Span("foo")
            Text("bar")
            Span("baz")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <p><span>foo</span>bar<span>baz</span></p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func optionalFalse() async throws {
        let condition = false
        let tag = P {
            Span("foo")
            Text("bar")
            if condition {
                Span("baz")
            }
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <p><span>foo</span>bar</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func optionalTrue() async throws {
        let condition = true
        let tag = P {
            Span("foo")
            Text("bar")
            if condition {
                Span("baz")
            }
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <p><span>foo</span>bar<span>baz</span></p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func eitherTrue() async throws {
        let condition = true
        let tag = P {
            Span("foo")
            Text("bar")
            if condition {
                Span("baz")
            }
            else {
                Span("abc")
            }
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <p><span>foo</span>bar<span>baz</span></p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func eitherFalse() async throws {
        let condition = false
        let tag = P {
            Span("foo")
            Text("bar")
            if condition {
                Span("baz")
            }
            else {
                Span("abc")
            }
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <p><span>foo</span>bar<span>abc</span></p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func forLoop() async throws {
        let values: [String] = ["a", "b", "c"]
        let tag = Div {
            for item in values {
                H1(item)
                P(item)
            }
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <div>
                <h1>a</h1>
                <p>a</p>
                <h1>b</h1>
                <p>b</p>
                <h1>c</h1>
                <p>c</p>
            </div>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
