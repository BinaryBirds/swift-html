import SGML
import Testing

@testable import SVG

@Suite
struct SwiftSVGTestSuite {

    @Test
    func basicLine() async throws {
        let tag = Line(
            x1: 1.01,
            y1: 2,
            x2: 3.33,
            y2: 4
        )

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <line x1="1.01" y1="2" x2="3.33" y2="4"></line>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func basicCircle() async throws {
        let tag = Circle(cx: 1, cy: 2, r: 3)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <circle cx="1" cy="2" r="3"></circle>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func basicPolygon() async throws {
        let tag = Polygon([1, 2, 3, 4])

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <polygon points="1 2 3 4"></polygon>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func basicPolyline() async throws {
        let tag = Polyline([1, 2, 3, 4])

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <polyline points="1 2 3 4"></polyline>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func basicRect() async throws {
        let tag = Rect(x: 1, y: 2, width: 3, height: 4)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <rect x="1" y="2" width="3" height="4"></rect>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func rectWithAttributes() async throws {
        let tag = Rect(
            x: 1,
            y: 2,
            width: 3,
            height: 4,
            rx: 5,
            ry: 6,
            pathLength: 7
        )

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <rect x="1" y="2" width="3" height="4" rx="5" ry="6" pathLength="7"></rect>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func basicEllipse() async throws {
        let tag = Ellipse(cx: 1, cy: 2, rx: 3, ry: 4)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ellipse cx="1" cy="2" rx="3" ry="4"></ellipse>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func basicText() async throws {
        let tag = Text("I love SVG")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <text>I love SVG</text>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func textAttributes() async throws {
        let tag = Text("I love SVG")
            .x(0)
            .y(15)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <text x="0" y="15">I love SVG</text>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func basicPath() async throws {
        let tag = Path("1 2 3")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <path d="1 2 3"></path>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func basicG() async throws {
        let tag = G {
            Circle(cx: 40, cy: 40, r: 20)
            Circle(cx: 60, cy: 60, r: 30)
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <g>
                <circle cx="40" cy="40" r="20"></circle>
                <circle cx="60" cy="60" r="30"></circle>
            </g>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func basicSVG() async throws {
        let tag = SVG {
            Circle(cx: 40, cy: 40, r: 20)
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <svg>
                <circle cx="40" cy="40" r="20"></circle>
            </svg>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func tagAttributes() async throws {
        let tag = SVG {
            Text("I love SVG")
                .x(0)
                .y(15)
                .fill("red")
                .setAttribute(name: "transform", value: "rotate(30 20 40)")
            //                .transform("rotate(30 20 40)")
            Circle(cx: 40, cy: 40, r: 20)
                .stroke("green")
                .strokeWidth(5)
        }
        .viewBox(minX: 0, minY: 10, width: 200, height: 100)
        .width(300)
        .height(200)

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <svg viewBox="0 10 200 100" width="300" height="200">
                <text x="0" y="15" fill="red" transform="rotate(30 20 40)">I love SVG</text>
                <circle cx="40" cy="40" r="20" stroke="green" stroke-width="5"></circle>
            </svg>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
