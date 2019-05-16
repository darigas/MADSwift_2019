//
//  ViewController.swift
//  KnowThyself
//
//  Created by Dariga Akhmetova on 5/7/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class TypesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var typesTableView: UITableView!
    static var types = [Type]()
    static var shortTypes = [Type]()
    
    func getTypes() {
        TypesViewController.types.removeAll()
        Alamofire.request("http://127.0.0.1:8000/types").responseJSON { response in
            guard response.result.isSuccess else {
                print("Ошибка при запросе данных \(String(describing: response.result.error))")
                return
            }
            guard let arrayOfTypes = response.result.value as? [[String:AnyObject]]
                else {
                    print("Не могу перевести в массив")
                    return
            }
            
            for typeNew in arrayOfTypes {
                let type = Type(name: typeNew["name"] as! String, description: typeNew["description"] as! String)
                TypesViewController.types.append(type)
            }
            self.typesTableView.reloadData()
        }
    }
    
    func getShortTypes() {
        TypesViewController.types.removeAll()
        Alamofire.request("http://127.0.0.1:8000/types_short").responseJSON { response in
            guard response.result.isSuccess else {
                print("Ошибка при запросе данных \(String(describing: response.result.error))")
                return
            }
            guard let arrayOfTypes = response.result.value as? [[String:AnyObject]]
                else {
                    print("Не могу перевести в массив")
                    return
            }
            
            for typeNew in arrayOfTypes {
                let type = Type(name: typeNew["name"] as! String, description: typeNew["shortDescription"] as! String)
                TypesViewController.shortTypes.append(type)
            }
            self.typesTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getTypes()
        getShortTypes()
        typesTableView.dataSource = self
        typesTableView.delegate = self
        self.tabBarItem.image = UIImage(named: "menu")
//        typesTableView.rowHeight = UITableView.automaticDimension
        typesTableView.rowHeight = UIScreen.main.fixedCoordinateSpace.bounds.height
    }
    
//    @IBAction func testButtonPressed(_ sender: AnyObject) {
//        let controller = storyboard?.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
//        self.present(controller, animated: true)
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TypesViewController.shortTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "typeCell", for: indexPath) as! TypeTableViewCell
        cell.typeName.text = TypesViewController.shortTypes[indexPath.row].name
        cell.typeDescription.text = TypesViewController.shortTypes[indexPath.row].description
        cell.typeName.font = UIFont(name: "Athelas", size: 18)
        cell.typeDescription.font = UIFont(name: "Athelas", size: 18)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "TypesResultViewController") as! TypesResultViewController
        TestViewController.typeResult = TypesViewController.shortTypes[indexPath.row].name
        self.present(controller, animated: true)
    }
}


