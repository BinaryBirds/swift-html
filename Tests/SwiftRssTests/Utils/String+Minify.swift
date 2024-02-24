//
//  File.swift
//
//
//  Created by Tibor Bodecs on 24/02/2024.
//

extension String {

    func minify() -> String {
        self
            .replacingOccurrences(of: "    ", with: "")
            .replacingOccurrences(of: "\n", with: "")
    }
}
