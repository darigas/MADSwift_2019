//
//  TypeTableViewCell.swift
//  KnowThyself
//
//  Created by Dariga Akhmetova on 5/7/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class TypeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var typeDescription: UILabel!
    @IBOutlet weak var typeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
