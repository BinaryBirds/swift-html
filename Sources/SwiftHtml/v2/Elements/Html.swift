//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol HtmlChildElement: Element {}

extension Head: HtmlChildElement {}
extension Body: HtmlChildElement {}
extension Comment: HtmlChildElement {}

public protocol HtmlAttribute: Attribute {}

extension Lang: HtmlAttribute {}
extension Custom: HtmlAttribute {}

public struct Html: StandardAttributedElement {
    
    public let children: [Element]
    public var attributes: [Attribute]
    
    public init(
        @Builder<HtmlAttribute> attributes b2: () -> [HtmlAttribute] = { [] },
        @Builder<HtmlChildElement> elements b1: () -> [HtmlChildElement]
    ) {
        self.children = b1()
        self.attributes = b2()
    }
}

extension Html {
 
    func lang(_ value: String) -> Self {
        modify { $0.addAttribute(Lang(value)) }
    }
}
