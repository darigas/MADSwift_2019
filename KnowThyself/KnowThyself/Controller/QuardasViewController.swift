//
//  QuardasViewController.swift
//  KnowThyself
//
//  Created by Dariga Akhmetova on 5/16/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit
import Alamofire

class QuardasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuardasViewController.quadras.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quadraCell") as! QuadraTableViewCell
        cell.quadraName.text = QuardasViewController.quadras[indexPath.row].quadraName
//        cell.quadraName.textColor = UIColor.red
        cell.quadraInfo.text = QuardasViewController.quadras[indexPath.row].info
        cell.quadraTypes.text = QuardasViewController.quadras[indexPath.row].types
        cell.quadraInfo.font = UIFont(name: "Athelas", size: 18)
        cell.quadraName.font = UIFont(name: "Athelas", size: 18)
        cell.quadraTypes.font = UIFont(name: "Athelas", size: 18)
        return cell
    }
    

    @IBOutlet weak var quadras: UITableView!
    static var quadras = [Quadra]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quadras.rowHeight = 500
        getQuadras()
        quadras.dataSource = self
        quadras.delegate = self
        self.tabBarItem.image = UIImage(named: "health_data")
        quadras.rowHeight = UIScreen.main.fixedCoordinateSpace.bounds.height 
    }
    
    func getQuadras() {
        TypesViewController.types.removeAll()
        Alamofire.request("http://127.0.0.1:8000/quadras").responseJSON { response in
            guard response.result.isSuccess else {
                print("Ошибка при запросе данных \(String(describing: response.result.error))")
                return
            }
            guard let arrayOfTypes = response.result.value as? [[String:AnyObject]]
                else {
                    print("Не могу перевести в массив")
                    return
            }
            
            for quadraNew in arrayOfTypes {
                let quadra = Quadra(quadraName: quadraNew["quadraName"] as! String, info: quadraNew["info"] as! String, types: quadraNew["types"] as! String)
                QuardasViewController.quadras.append(quadra)
//                print(quadra.info)
            }
            self.quadras.reloadData()
        }
//        print(QuardasViewController.quadras)
    }
}
