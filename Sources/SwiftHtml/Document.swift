//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

struct Document: HTMLRepresentable {

    enum Doctype: String {
        case html5 = "html"
        // @TODO: custom doctype support?
        case html4 = "HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\""
        case xhtml = "html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">"
    }

    var type: Doctype
    var root: Html
    
    init(_ type: Doctype = .html5, _ builder: () -> Html) {
        self.type = type
        self.root = builder()
    }
    
    var html: String {
        "<!DOCTYPE " + type.rawValue + ">" + root.html
    }
}



