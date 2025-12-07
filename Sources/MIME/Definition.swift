//
//  File.swift
//
//
//  Created by Tibor Bodecs on 2023. 03. 08..
//

public enum Definition {
    case standard
    case nonStandard
    case known
    case custom([String: [String]])
}

extension Definition {

    public static func union(_ definitions: Definition...) -> Definition {
        var values: [String: [String]] = [:]

        for def in definitions {
            for (key, value) in def.values {
                if values[key] == nil {
                    values[key] = []
                }
                var extensions = values[key]!
                for ext in value {
                    if !extensions.contains(ext) {
                        extensions.append(ext)
                    }
                }
                values[key] = extensions
            }
        }
        return .custom(values)
    }
}

extension Definition {

    var values: [String: [String]] {
        switch self {
        case .standard:
            return standardDefinitions
        case .nonStandard:
            return nonStandardDefinitions
        case .known:
            return Definition.union(.standard, .nonStandard).values
        case .custom(let values):
            return values
        }
    }
}
