//
//  Guid.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Guid: Tag {

}

extension Guid {

    public func isPermalink(_ value: Bool = true) -> Self {
        attribute("isPermalink", String(value))
    }
}
