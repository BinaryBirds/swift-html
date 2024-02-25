//
//  File.swift
//
//
//  Created by Tibor Bodecs on 25/02/2024.
//

import SwiftSgml

extension Document {

    public static func Rss(
        @Builder<Channel> _ builder: () -> [Channel]
    ) -> Document {
        .init(.xml) {
            SwiftRss.Rss {
                builder()
            }
        }
    }
}
