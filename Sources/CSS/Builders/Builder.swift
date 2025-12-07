@resultBuilder
public enum Builder<T> {

    public static func buildBlock(
        _ components: T...
    ) -> [T] {
        components
    }

    public static func buildBlock(
        _ components: [T]
    ) -> [T] {
        components
    }

    public static func buildBlock(
        _ components: [T]...
    ) -> [T] {
        components.flatMap { $0 }
    }

    public static func buildEither(
        first component: [T]
    ) -> [T] {
        component
    }

    public static func buildEither(
        second component: [T]
    ) -> [T] {
        component
    }

    public static func buildOptional(
        _ component: [T]?
    ) -> [T] {
        component ?? []
    }

    public static func buildExpression(
        _ expression: T
    ) -> [T] {
        [expression]
    }

    public static func buildExpression(
        _ expression: [T]
    ) -> [T] {
        expression
    }

    public static func buildArray(
        _ components: [[T]]
    ) -> [T] {
        components.flatMap { $0 }
    }
}
