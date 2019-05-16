//
//  TestTableViewCell.swift
//  KnowThyself
//
//  Created by Dariga Akhmetova on 5/14/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    var id: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setValue(_ id: Int) {
        self.id = id
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func option1Pressed(_ sender: UIButton) {
        TestViewController.allAnswers[id] = true
    }
    
    @IBAction func option2Pressed(_ sender: UIButton) {
        TestViewController.allAnswers[id] = false
    }
    
}
