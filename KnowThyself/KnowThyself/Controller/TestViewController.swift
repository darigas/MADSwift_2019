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

enum ButtonState {
    case left
    case right
    case none
    
    func value() -> Bool {
        switch self {
        case .left:
            return true
        case .right, .none:
            return false
        }
    }
}

class TestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var testTableView: UITableView!
    @IBOutlet weak var submit: UIButton!
    
    let allQuestions = QuestionList()
    static var allAnswers = [ButtonState]()
    static var typeResult: String = "Undefined"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView.dataSource = self
        testTableView.delegate = self
        for _ in 0..<28 {
            TestViewController.allAnswers.append(.none)
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
        let q = allQuestions.questions[indexPath.row]

//        print(indexPath.row)
        cell.setQuestion(q, state: TestViewController.allAnswers[indexPath.row])

        cell.leftSelectedBlock = {
            TestViewController.allAnswers[indexPath.row] = .left
            tableView.reloadRows(at: [indexPath], with: .none)
        }

        cell.rightSelectedBlock = {
            TestViewController.allAnswers[indexPath.row] = .right
            tableView.reloadRows(at: [indexPath], with: .none)
        }

        return cell
    }
    
    
    static func instantiate() -> TestViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        return viewController
    }
    
    @IBAction func submitPressed(_ sender: Any) {
//        print(TestViewController.allAnswers)
        //check
        for i in 0..<TestViewController.allAnswers.count {
            if TestViewController.allAnswers[i] == .none {
                let alert = UIAlertController(title: "Ошибка", message: "Выберите ответ из каждой пары", preferredStyle: .alert)
                let okButton = UIAlertAction.init(title: "ОК", style: .cancel, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true)
//                return
            }
        }
        
        let allAnswers = TestViewController.allAnswers
        print (allAnswers)
        Alamofire.request("http://127.0.0.1:8000/test", method: .post, parameters:
            ["_1": allAnswers[0].value(), "_2": allAnswers[1].value(), "_3": allAnswers[2].value(), "_4": allAnswers[3].value(), "_5": allAnswers[4].value(), "_6": allAnswers[5].value(), "_7": allAnswers[6].value(), "_8": allAnswers[7].value(), "_9": allAnswers[8].value(), "_10": allAnswers[9].value(), "_11": allAnswers[10].value(), "_12": allAnswers[11].value(), "_13": allAnswers[12].value(), "_14": allAnswers[13].value(), "_15": allAnswers[14].value(), "_16": allAnswers[15].value(), "_17": allAnswers[16].value(), "_18": allAnswers[17].value(), "_19": allAnswers[18].value(), "_20": allAnswers[19].value(), "_21": allAnswers[20].value(), "_22": allAnswers[21].value(), "_23": allAnswers[22].value(), "_24": allAnswers[23].value(), "_25": allAnswers[24].value(), "_26": allAnswers[25].value(), "_27": allAnswers[26].value(), "_28": allAnswers[27].value()]).responseString { response in
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
