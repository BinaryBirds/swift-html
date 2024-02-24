//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol Attribute: Sendable {
    var key: String { get }
    var value: String? { get set }
}
