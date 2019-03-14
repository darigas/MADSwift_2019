//
//  DetailViewController.swift
//  ImageParser
//
//  Created by Dariga Akhmetova on 3/14/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit
import SDWebImage

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageTitle: UILabel!

    var image: Image?
    
    static func instantiate(image: Image) -> DetailViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        viewController.image = image
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let image = image {
            imageView.sd_setImage(with: URL(string: image.url))
            imageTitle.text = image.title
            imageTitle.font = UIFont(name: "Didot", size: 14)
            imageView.layer.cornerRadius = 10
            imageView.layer.masksToBounds = true
        }
    }
}
