//
//  Type.swift
//  KnowThyself
//
//  Created by Dariga Akhmetova on 5/7/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation
import SwiftyJSON

class Type {
    var name: String
    var description: String
//    var url: String
    
    init(json: JSON) {
        name = json["name"].stringValue
        description = json["description"].stringValue
        
//        url = "http://127.0.0.1:8000/types"
    }
}
