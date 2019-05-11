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
import SVProgressHUD
import SDWebImage

struct SomeType {
    let name: String
    let description: String
}

class TypesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var typesTableView: UITableView!
    var types = [SomeType]()
    
//    var requestURL = URLRequest(url: URL(string: "http://127.0.0.1:8000/types")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typesTableView.dataSource = self
        typesTableView.delegate = self
        self.typesTableView.reloadData()
    }
    
    @IBAction func testButtonPressed(_ sender: UIButton) {
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
                let type = SomeType(name: typeNew["name"] as! String, description: typeNew["description"] as! String)
                self.types.append(type)
            }
        }
        
        Alamofire.request("http://127.0.0.1:8000/test", method: .post, parameters:
            ["one": false, "two": false, "three": false, "four": false, "five": false, "six": false, "seven": false, "eight": false, "nine": false, "ten": false, "eleven": false, "twelve": false, "thirteen": false, "fourteen": false, "fifteen": false, "sixteen": false, "seventeen": false, "eighteen": false, "nineteen": false, "twenty": false, "twentyOne": false, "twentyTwo": false, "twentyThree": false, "twentyFour": false, "twentyFive": false, "twentySix": false, "twentySeven": false, "twentyEight": false]).responseJSON { response in
            print(response)
        }
        
        DispatchQueue.main.async {
            self.typesTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "typeCell", for: indexPath) as! TypeTableViewCell
        cell.typeName.text = types[indexPath.row].name
        cell.typeDescription.text = types[indexPath.row].description
//        configureCell(cell: cell!, for: indexPath)
        return cell
    }
    
    private func configureCell(cell: TypeTableViewCell, for indexPath: IndexPath) {
        let type = types[indexPath.row]
        cell.typeName.text = type.name
        cell.typeDescription.text = type.description
        print(type.description)
    }
}


