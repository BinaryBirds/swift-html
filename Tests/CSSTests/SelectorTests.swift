import Testing

@testable import CSS

@Suite
struct SelectorTests {

    // MARK: - margin

    @Test
    func testRules() {
        let css = Stylesheet([
            Charset("UTF-8")
        ])

        #expect(
            StylesheetRenderer().render(css) == #"""
                @charset "UTF-8";
                """#
        )
    }

    @Test
    func testMarginBottom() {
        let css = Stylesheet {
            Media {
                Universal {
                    MarginTop(8.px)
                    MarginBottom(.length(25.percent))
                }
            }
        }

        #expect(
            StylesheetRenderer().render(css) == #"""
                * {
                    margin-top: 8px;
                    margin-bottom: 25%;
                }
                """#
        )
    }

    // MARK: - padding

    func testPadding() {
        let css = Stylesheet {
            Media {
                AllElements {
                    Padding(0)
                    Padding(8.rem)
                    Padding(horizontal: 8.px)
                    Padding(horizontal: .length(0), vertical: .inherit)
                }
            }
        }

        #expect(
            StylesheetRenderer().render(css) == #"""
                * {
                    padding: 0;
                    padding: 8rem;
                    padding: 8px 0;
                    padding: 0 inherit;
                }
                """#
        )
    }
}
