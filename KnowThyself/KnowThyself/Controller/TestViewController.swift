//
//  TestViewController.swift
//  KnowThyself
//
//  Created by Dariga Akhmetova on 5/8/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import SVProgressHUD
import SDWebImage

class TestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var testTableView: UITableView!
    @IBOutlet weak var submit: UIButton!
    
    let allQuestions = QuestionList()
    static var allAnswers = [Bool]()
    static var typeResult: String = "Undefined"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView.dataSource = self
        testTableView.delegate = self
        for _ in 0...28 {
            TestViewController.allAnswers.append(false)
        }
        self.tabBarItem.image = UIImage(named: "checked_checkbox")
        testTableView.rowHeight = UIScreen.main.fixedCoordinateSpace.bounds.height / 10
        submit.heightAnchor.constraint(equalToConstant: UIScreen.main.fixedCoordinateSpace.bounds.height / 10).isActive = true
        submit.titleLabel?.font = UIFont(name: "Athelas", size: 18)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allQuestions.questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as! TestTableViewCell
        cell.option2.setTitle(allQuestions.questions[indexPath.row].option2, for: .normal)
        cell.option1.setTitle(allQuestions.questions[indexPath.row].option1, for: .normal)
        cell.setValue(indexPath.row)
        cell.selectionStyle = .none
        cell.option1.layer.cornerRadius = 5
        cell.option2.layer.cornerRadius = 5
        cell.option1.titleLabel?.font = UIFont(name: "Athelas", size: 18)
        cell.option2.titleLabel?.font = UIFont(name: "Athelas", size: 18)
        return cell
    }
    
    
    static func instantiate() -> TestViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        return viewController
    }
    
    @IBAction func submitPressed(_ sender: Any) {
        let allAnswers = TestViewController.allAnswers
        print (allAnswers)
        Alamofire.request("http://127.0.0.1:8000/test", method: .post, parameters:
            ["_1": allAnswers[0], "_2": allAnswers[1], "_3": allAnswers[2], "_4": allAnswers[3], "_5": allAnswers[4], "_6": allAnswers[5], "_7": allAnswers[6], "_8": allAnswers[7], "_9": allAnswers[8], "_10": allAnswers[9], "_11": allAnswers[10], "_12": allAnswers[11], "_13": allAnswers[12], "_14": allAnswers[13], "_15": allAnswers[14], "_16": allAnswers[15], "_17": allAnswers[16], "_18": allAnswers[17], "_19": allAnswers[18], "_20": allAnswers[19], "_21": allAnswers[20], "_22": allAnswers[21], "_23": allAnswers[22], "_24": allAnswers[23], "_25": allAnswers[24], "_26": allAnswers[25], "_27": allAnswers[26], "_28": allAnswers[27]]).responseString { response in
                guard response.result.isSuccess else {
                    print("Not defined")
                    return
                }
                guard let result = response.result.value else {
                    print("Still not defined")
                    return
                }
                TestViewController.typeResult = result
//                let alert = UIAlertController(title: "Ваш соционический тип", message: typeSomething, preferredStyle: .alert)
//                let okButton = UIAlertAction.init(title: "ОК", style: .cancel, handler: nil)
//                alert.addAction(okButton)
//                self.present(alert, animated: true)
                let controller = self.storyboard?.instantiateViewController(withIdentifier: "TypesResultViewController") as! TypesResultViewController
//                controller.typeName.text = TestViewController.typeResult
                self.present(controller, animated: true)
        }
    }
}
