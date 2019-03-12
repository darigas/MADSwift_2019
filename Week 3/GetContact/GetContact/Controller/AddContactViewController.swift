//
//  AddContactViewController.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

protocol AddContactDelegate {
    func didCreateContact(contact: Contact)
}

class AddContactViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var color: UIColor = UIColor.gray
    
    //Returning number of items
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    //Initializing of cells, background colors and hiding check-mark
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let colorCell = collectionView.dequeueReusableCell(withReuseIdentifier: "colorCell", for: indexPath) as! ColorCollectionViewCell
        colorCell.backgroundColor = tagColors[indexPath.row].withAlphaComponent(0.85)
        colorCell.checkImageView.isHidden = true
        colorCell.layer.cornerRadius = 35
        colorCell.layer.masksToBounds = true
        return colorCell
    }
    
    //isSelected is true if didSelectItemAt occured
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        color = tagColors[indexPath.row]
        let colorCell = collectionView.dequeueReusableCell(withReuseIdentifier: "colorCell", for: indexPath) as! ColorCollectionViewCell
        colorCell.isSelected = true
    }

    //Declaring outlets
    @IBOutlet weak var imageCheck: UIImageView!
    @IBOutlet weak var firstnameField: UITextField!
    @IBOutlet weak var lastnameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var colorCollectionView: UICollectionView!
    
    //Array of UIColors
    var tagColors = [UIColor]()
    
    var delegate: AddContactDelegate?
    
    //Adding buttons to controller and colors to array
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorCollectionView.dataSource = self
        colorCollectionView.delegate = self
        tagColors.append(UIColor.brown)
        tagColors.append(UIColor.blue)
        tagColors.append(UIColor.cyan)
        tagColors.append(UIColor.green)
        tagColors.append(UIColor.orange)
        tagColors.append(UIColor.red)
        tagColors.append(UIColor.magenta)
        tagColors.append(UIColor.purple)
        
        let addButton = UIBarButtonItem.init(title: "Add", style: .done, target: self, action: #selector(addTapped))
        
        self.navigationItem.rightBarButtonItem = addButton
    }
    
    //Checking for filling
    @objc
    func addTapped() {
        
        guard firstnameField.text != "" else {
            
            let alert = UIAlertController.init(title: "Error", message: "Fill out your name", preferredStyle: .alert)
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        guard phoneField.text != "" else {
            
            let alert = UIAlertController.init(title: "Error", message: "Fill out your phone", preferredStyle: .alert)
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        guard color != UIColor.gray else {
            
            let alert = UIAlertController.init(title: "Error", message: "Choose tag color", preferredStyle: .alert)
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        let contact = Contact.init(firstname: firstnameField.text ?? "", lastname: lastnameField.text ?? "", phone: phoneField.text ?? "", tag: color.tag)
        
        print(contact.tag)
        
        delegate?.didCreateContact(contact: contact)

        self.navigationController?.popViewController(animated: true)
        
    }
}

//Making connection between tags, UIColors and Strings
extension UIColor {
    var tag: TagColor {
        switch self {
        case UIColor.brown: return .brown
        case UIColor.blue: return .blue
        case UIColor.cyan: return .cyan
        case UIColor.green: return .green
        case UIColor.orange: return .orange
        case UIColor.red: return .red
        case UIColor.magenta: return .magenta
        case UIColor.purple: return .purple
        default: return .white
        }
    }
}

extension TagColor {
    var color: UIColor {
        switch self {
        case .brown: return UIColor.brown
        case .blue: return UIColor.blue
        case .cyan: return UIColor.cyan
        case .green: return UIColor.green
        case .orange: return UIColor.orange
        case .red: return UIColor.red
        case .magenta: return UIColor.magenta
        case .purple: return UIColor.purple
        default: return UIColor.white
        }
    }
}

extension String {
    var color: UIColor {
        switch self {
        case "brown": return UIColor.brown
        case "blue": return UIColor.blue
        case "cyan": return UIColor.cyan
        case "green": return UIColor.green
        case "orange": return UIColor.orange
        case "red": return UIColor.red
        case "magenta": return UIColor.magenta
        case "purple": return UIColor.purple
        default: return UIColor.white
        }
    }
}
