//
//  Contact.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import Foundation

enum TagColor {
    case brown
    case blue
    case cyan
    case green
    case orange
    case red
    case magenta
    case purple
    case white
}

class Contact {
    
    var firstname: String
    var lastname: String
    var phone: String
    var tag: TagColor
    
    init(firstname: String, lastname: String, phone: String, tag: TagColor) {
        
        self.firstname = firstname
        self.lastname = lastname
        self.phone = phone
        self.tag = tag
    }
    
}
