//
//  MIME.swift
//  MIME
//
//  Created by Tibor Bodecs on 2023. 02. 24..
//

public struct MIMEDetector {

    private var definitions: [String: [String]]

    public init(_ definition: Definition = .known) {
        self.definitions = definition.values
    }

    public mutating func add(_ definition: Definition) {
        for (key, value) in definition.values {
            definitions[key] = value
        }
    }

    public func getType(for ext: String) -> String? {
        var type: String?
        var currentScore: Double = 0

        for (key, value) in definitions where value.contains(ext) {
            let newScore = getMIMEScore(for: key)
            if type == nil || newScore > currentScore {
                type = key
                currentScore = newScore
            }
        }
        return type
    }

    public func getExtension(for type: String) -> String? {
        definitions.first { $0.key == type }?.value.first
    }
}
