public struct TitleAttribute: HTMLAttribute {

    public var value: String?

    public init(
        _ value: String? = nil
    ) {
        self.value = value
    }
}
