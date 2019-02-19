//
//  FrontViewController.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 2/19/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {

    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "startQuiz", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
