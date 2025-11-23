public protocol StandardTextTag: StandardTag {
    var text: String { get }
}

extension StandardTextTag {

    public var children: [Element] {
        [
            Text(
                text
            )
        ]
    }

}
