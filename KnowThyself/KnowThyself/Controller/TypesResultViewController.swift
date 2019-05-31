//
//  TypesResultViewController.swift
//  KnowThyself
//
//  Created by Dariga Akhmetova on 5/15/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit
import Alamofire

class TypesResultViewController: UIViewController {

    @IBOutlet weak var typeName: UILabel!
    @IBOutlet weak var typeDescription: UITextView!
    @IBOutlet weak var navigationBar: UINavigationBar!
    
//    var types = [Type]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typeName.text = TestViewController.typeResult
        print(TypesViewController.types.count)
//        print(TypesViewController.types.count)
//        print(TestViewController.typeResult)
//        print(types)
        for i in 0..<TypesViewController.types.count {
            if TypesViewController.types[i].name == TestViewController.typeResult {
                typeDescription.text = TypesViewController.types[i].description
//                print(TypesViewController.types[i].description)
//                typeDescription.text = "SOMETHING"
            }
        }
        let navitem = UINavigationItem()
        let addButton = UIBarButtonItem.init(title: "Back", style: .done, target: self, action: #selector(goBack))
        navitem.leftBarButtonItem = addButton
        navigationBar.setItems([navitem], animated: false)
        typeName.font = UIFont(name: "Athelas", size: 18)
        typeDescription.font = UIFont(name: "Athelas", size: 18)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Athelas", size: 18)!]
        let customFont = UIFont(name: "Athelas", size: 18)
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: customFont!], for: .normal)
    }
    
    @objc func goBack(){
        dismiss(animated: true, completion: nil)
    }
}
