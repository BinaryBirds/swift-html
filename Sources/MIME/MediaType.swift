
/// type/subtype;parameter=value

public struct MediaType {

    public struct Parameter: Sendable {
        public var key: String
        public var value: String?
        
        public init(
            key: String,
            value: String
        ) {
            self.key = key
            self.value = value
        }
        
        public var rawValue: String {
            var result = key
            if let value, !value.isEmpty {
                result += "="
                result += value
            }
            return result
        }
    }
    
    public struct Subtype: Sendable, ExpressibleByStringLiteral {
        
        public struct Suffix: Sendable, ExpressibleByStringLiteral {

            public var value: String
            
            public init(value: String) {
                self.value = value
            }
            
            public init(
                stringLiteral value: StringLiteralType
            ) {
                self.init(value: value)
            }
            
        }
        
        public var value: String
        public var suffix: Suffix?
        
        public init(
            value: String,
            suffix: Suffix? = nil
        ) {
            self.value = value
            self.suffix = suffix
        }
        
        public init(
            stringLiteral value: StringLiteralType
        ) {
            self.init(value: value, suffix: nil)
        }
        
        public var rawValue: String {
            var result = value
            if let suffix, !suffix.value.isEmpty {
                result += "+"
                result += suffix.value
            }
            return result
        }
    }
    
    public var type: String
    public var subtype: String
    public var parameter: Parameter?
    
    
    public var rawValue: String {
        var value = "\(type)/\(subtype)"
        if let parameter, !parameter.rawValue.isEmpty {
            value += "; " + parameter.rawValue
        }
        return value
    }

}

public extension MediaType {

    enum Application {
        
        static let name: String = "application"
        
        public static func json() -> MediaType {
            .init(type: name, subtype: "json" )
        }
    }
    
    enum Multipart {
        
        static let name: String = "multipart"
        
        public static func formData(
            boundary value: String
        ) -> MediaType {
            .init(
                type: name,
                subtype: "form-data",
                parameter: .init(
                    key: "boundary",
                    value: value
                )
            )
        }
    }
}


