//
//  ImageService.swift
//  ImageParser
//
//  Created by Dariga Akhmetova on 3/14/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ImageService {
    static func getImageList(success: @escaping ([Image]) -> Void, failure: @escaping (Error) -> Void){
        let url = URL.init(string: "https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=e95c68bda6354323712d972796eb22b6&per_page=100&format=json&nojsoncallback=1&api_sig=4141a191fb9e8cebc963937745d3c479")
        Alamofire.request(url!)
            .responseJSON {
                response in
                switch response.result {
                case .success(let value):
                    let images = JSON(value)["photos"]["photo"].arrayValue
                    var results = [Image]()
                    for json in images {
                        results.append(Image.init(json: json))
                    }
                    success(results)
                case .failure(let error):
                    failure(error)
                }
        }
    }
}
