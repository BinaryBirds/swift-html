//
//  Changefreq.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class ChangeFreq: Tag {
    
    public enum Value: String {
        case always
        case hourly
        case daily
        case weekly
        case monthly
        case yearly
        case never
    }
    
    init(_ value: Value) {
        super.init()
        setContents(value.rawValue)
    }

}
