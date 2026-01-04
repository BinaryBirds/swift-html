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
                    MarginTop(.length(.px(8)))
                    MarginBottom(.length(.percent(25)))
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
                Universal {
                    Padding(.zero)
                    Padding(.rem(8))
                    Padding(horizontal: .px(8))
                    Padding(horizontal: .length(.zero), vertical: .inherit)
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
