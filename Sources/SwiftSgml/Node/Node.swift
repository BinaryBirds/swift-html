//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public enum Node {
    case standard(StandardNode, [Node])
    case short(ShortNode)
    case text(TextNode)
    case comment(CommentNode)
}
