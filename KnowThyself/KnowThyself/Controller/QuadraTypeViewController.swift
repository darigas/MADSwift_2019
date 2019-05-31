//
//  QuadraTypeViewController.swift
//  KnowThyself
//
//  Created by Dariga Akhmetova on 5/28/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class QuadraTypeViewController: UIViewController {

    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var quadraName: UILabel!
    @IBOutlet weak var quadraInfo: UITextView!
    
    static var name: String = "Название квадры"
    static var info: String = "Описание квадры"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let navitem = UINavigationItem()
//        let addButton = UIBarButtonItem.init(title: "Back", style: .done, target: self, action: #selector(goBack))
//        navitem.leftBarButtonItem = addButton
//        navigationBar.setItems([navitem], animated: false)
        quadraName.text = QuadraTypeViewController.name
        quadraInfo.text = QuadraTypeViewController.info
        quadraName.font = UIFont(name: "Athelas", size: 18)
        quadraInfo.font = UIFont(name: "Athelas", size: 18)
        quadraName.lineBreakMode = .byWordWrapping
    }
    
    static func instantiate(quadraName: String, quadraInfo: String) -> QuadraTypeViewController{
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "QuadraTypeViewController") as! QuadraTypeViewController
        QuadraTypeViewController.name = quadraName
        QuadraTypeViewController.info = quadraInfo
        return viewController
    }
    
    @objc func goBack(){
        dismiss(animated: true, completion: nil)
    }
}
