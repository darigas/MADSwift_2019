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
    
    var leftSelectedBlock: (()->())?
    var rightSelectedBlock: (()->())?

    override func awakeFromNib() {
        super.awakeFromNib()
        option1.layer.cornerRadius = 5
        option2.layer.cornerRadius = 5
        option1.titleLabel?.font = UIFont(name: "Athelas", size: 18)
        option2.titleLabel?.font = UIFont(name: "Athelas", size: 18)
        selectionStyle = .none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setQuestion(_ question: Question, state: ButtonState) {
        option2.setTitle(question.option2, for: .normal)
        option1.setTitle(question.option1, for: .normal)

        switch state {
        case .left:
            print("left")
            option1.backgroundColor = .yellow
            option2.backgroundColor = .blue
        case .right:
            print("right")
            option1.backgroundColor = .blue
            option2.backgroundColor = .yellow
        case .none:
            print("none")
            option1.backgroundColor = .blue
            option2.backgroundColor = .blue
        }
        
    }
    
    @IBAction func option1Pressed(_ sender: UIButton) {
        leftSelectedBlock?()
    }
    
    @IBAction func option2Pressed(_ sender: UIButton) {
        rightSelectedBlock?()
    }
    
}
