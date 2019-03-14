//
//  ImageCollectionViewCell.swift
//  ImageParser
//
//  Created by Dariga Akhmetova on 3/14/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit
import Alamofire

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func downloadImages(imageURL: String) {
        Alamofire.request(imageURL, method: .get).responseData {
            (response) in
            print(response.result)
            if let data = response.data {
                self.imageView.image = UIImage(data: data)
            }
        }
    }
}
