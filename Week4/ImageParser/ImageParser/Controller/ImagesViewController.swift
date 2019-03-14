//
//  ViewController.swift
//  ImageParser
//
//  Created by Dariga Akhmetova on 3/14/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import SVProgressHUD
import SDWebImage

class ImagesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var imagesCollection: UICollectionView!
    var images = [Image]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImageCollectionViewCell
//        imageCell.downloadImages(imageURL: images[indexPath.row].url)
        imageCell.imageView.sd_setImage(with: URL(string: images[indexPath.row].url))
        imageCell.layer.cornerRadius = 10
//        print(images[indexPath.row])
        return imageCell
    }
    
    func loadImages() {
        SVProgressHUD.show()
        ImageService.getImageList(success: {
            (images) in
            SVProgressHUD.dismiss()
            self.images = images
            self.imagesCollection.reloadData()
        }){ (error) in
            SVProgressHUD.dismiss()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImages()
        imagesCollection.dataSource = self
        imagesCollection.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = DetailViewController.instantiate(image: images[indexPath.item])
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.size.width / 3 - 16
        return CGSize.init(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}

