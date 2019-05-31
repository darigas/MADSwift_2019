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
        return QuardasViewController.quadrasTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quadraCell") as! QuadraTableViewCell
        cell.quadraName.text = QuardasViewController.quadrasTypes[indexPath.row].quadraName
        cell.quadraName.font = UIFont(name: "Athelas", size: 18)
        cell.selectionStyle = .none
        return cell
    }
    

    @IBOutlet weak var quadras: UITableView!
    
    static var quadrasTypes = [Quadra]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getQuadras()
        quadras.dataSource = self
        quadras.delegate = self
        self.tabBarItem.image = UIImage(named: "health_data")
//        quadras.rowHeight = UITableView.automaticDimension
//        quadras.estimatedRowHeight = 600
//        quadras.rowHeight = UIScreen.main.fixedCoordinateSpace.bounds.height
    }
    
    func getQuadras() {
//        TypesViewController.types.removeAll()
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
                QuardasViewController.quadrasTypes.append(quadra)
//                print(quadra.info)
            }
            print(QuardasViewController.quadrasTypes.count)
            for i in 0..<QuardasViewController.quadrasTypes.count {
                print(QuardasViewController.quadrasTypes[i].info)
            }
            self.quadras.reloadData()
        }
//        print(QuardasViewController.quadras)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = QuadraTypeViewController.instantiate(quadraName: QuardasViewController.quadrasTypes[indexPath.row].quadraName, quadraInfo: QuardasViewController.quadrasTypes[indexPath.row].info)
        navigationController?.pushViewController(controller, animated: true)
    }
}
