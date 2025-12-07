extension Array {

    func joinedElementsAsString(
        separator: String = ","
    ) -> String {
        map { "\($0)" }.joined(separator: separator)
    }
}
