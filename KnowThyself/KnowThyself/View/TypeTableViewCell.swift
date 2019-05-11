//
//  TypeTableViewCell.swift
//  KnowThyself
//
//  Created by Dariga Akhmetova on 5/7/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation
import Alamofire

class TypeTableViewCell: UICollectionViewCell {
    
    @IBOutlet weak var typeName: UILabel!
    @IBOutlet weak var typeDescription: UITextView!
    
    func downloadTypes(typeURL: String) {
        Alamofire.request(typeURL, method: .get).responseData {
            (response) in
            print(response.result)
            if let data = response.data {
                self.typeName.text = data.result.value
                self.typeDescription.text = data.result.value
            }
        }
    }
}
