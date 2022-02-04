//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 04..
//

extension Double {
    
    // @NOTE: this is a pure hack, but it works without using Foundation
    var preciseString: String {
        if self - Double(Int(self)) == 0 {
            return String(Int(self))
        }
        return String(self)
    }
    
}

