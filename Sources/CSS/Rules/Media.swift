public struct Media: Rule {

    public enum Screen: String {
        /// 0-599px
        case xs = "screen and (max-width: 599px)"
        /// 600-899px
        case s = "screen and (min-width: 600px)"
        /// 900-1199px
        case normal = "screen and (min-width: 900px)"
        /// 1200-1799px
        case l = "screen and (min-width: 1200px)"
        /// 1800+px
        case xl = "screen and (min-width: 1800px)"
        /// dark mode
        case dark = "screen and (prefers-color-scheme: dark)"
        /// standalone app screen
        case standalone = "screen and (display-mode: standalone)"
    }

    var query: String?
    var selectors: [Selector]

    public init(
        _ query: String? = nil,
        @Builder<Selector> _ builder: () -> [Selector]
    ) {
        self.query = query
        self.selectors = builder()
    }

    public init(
        screen: Screen,
        @Builder<Selector> _ builder: () -> [Selector]
    ) {
        self.init(screen.rawValue, builder)
    }
}
