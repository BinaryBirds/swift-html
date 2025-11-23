public protocol HTMLAttribute: Attribute {

}

extension HTMLAttribute {

    public static var name: String {
        String(String(describing: self).lowercased().dropLast(9))
    }
}
