//
//  ContactTableViewCell.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //Declaring outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var tagView: UIView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setContact(_ contact: Contact) {
        nameLabel.text = "\(contact.firstname) \(contact.lastname)"
        
        phoneLabel.text = contact.phone
    }
    
    func setColor(_ color: UIColor) {
        tagView.backgroundColor = color.withAlphaComponent(0.85)
        tagView.layer.cornerRadius = 15
    }
}
