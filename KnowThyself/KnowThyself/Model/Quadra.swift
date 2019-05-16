//
//  Quadra.swift
//  KnowThyself
//
//  Created by Dariga Akhmetova on 5/16/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation
import SwiftyJSON

class Quadra {
    var quadraName: String
    var info: String
    var types: String
    
    init(quadraName: String, info: String, types: String){
        self.quadraName = quadraName
        self.info = info
        self.types = types
    }
}
