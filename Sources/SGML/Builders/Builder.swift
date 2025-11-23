@resultBuilder
public enum Builder<T> {

    public static func buildBlock(
        _ elements: T...
    ) -> [T] {
        elements
    }
}
