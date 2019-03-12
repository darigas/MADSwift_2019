//
//  ContactDetailViewController.swift
//  Contacts
//
//  Created by Dariga Akhmetova on 3/6/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveContact(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
