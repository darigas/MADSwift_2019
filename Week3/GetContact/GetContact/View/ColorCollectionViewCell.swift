//
//  ColorCollectionViewCell.swift
//  GetContact
//
//  Created by Dariga Akhmetova on 3/12/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

class ColorCollectionViewCell: UICollectionViewCell {
    
    //Declaring outlets
    @IBOutlet weak var checkImageView: UIImageView!
    
    //Overring of isSelected method to check the cell
    override var isSelected: Bool{
        didSet {
            if self.isSelected
            {
                checkImageView.isHidden = false
            }
            else
            {
                checkImageView.isHidden = true
            }
        }
    }
}
