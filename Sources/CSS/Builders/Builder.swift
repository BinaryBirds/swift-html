@resultBuilder
public enum Builder<Element> {

    // Turn a single expression into a component
    public static func buildExpression(
        _ expression: Element
    ) -> [Element] {
        [expression]
    }

    // Combine components from the block
    public static func buildBlock(
        _ components: [Element]...
    ) -> [Element] {
        components.flatMap { $0 }
    }

    // if without else
    public static func buildOptional(
        _ component: [Element]?
    ) -> [Element] {
        component ?? []
    }

    // if/else
    public static func buildEither(
        first component: [Element]
    ) -> [Element] {
        component
    }

    public static func buildEither(
        second component: [Element]
    ) -> [Element] {
        component
    }

    // for loops
    public static func buildArray(
        _ components: [[Element]]
    ) -> [Element] {
        components.flatMap { $0 }
    }

    // #available, etc.
    public static func buildLimitedAvailability(
        _ component: [Element]
    ) -> [Element] {
        component
    }
}
