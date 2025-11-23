@resultBuilder
public enum ElementBuilder {

    public static func buildBlock(
        _ elements: Element...
    ) -> [Element] {
        elements
    }
}
