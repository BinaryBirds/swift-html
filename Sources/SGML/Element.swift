import DOM

public protocol Element: Sendable {
    var node: Node { get }
}
