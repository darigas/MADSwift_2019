//
//  Image.swift
//  ImageParser
//
//  Created by Dariga Akhmetova on 3/14/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation
import SwiftyJSON

class Image {
    var id: String
    var owner: String
    var title:String
    var url: String
    
    init(json: JSON) {
        id = json["id"].stringValue
        owner = json["owner"].stringValue
        title = json["title"].stringValue
        
        let secret = json["secret"].stringValue
        let server = json["server"].stringValue
        let farm = json["farm"].stringValue
        
        url = "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret).jpg"
    }
}

class ImageDetail {
    var username: String
    var title: String
    var description: String
    var date: String
    
    init(json: JSON) {
        username = json["owner"]["username"].stringValue
        title = json["title"]["_content"].stringValue
        description = json["description"]["_content"].stringValue
        date = json["date"]["taken"].stringValue
    }
}
