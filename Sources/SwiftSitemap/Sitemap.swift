//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import Foundation

// https://www.sitemaps.org/protocol.html
public final class Sitemap: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "sitemap"), children: builder())
        
    }
}
