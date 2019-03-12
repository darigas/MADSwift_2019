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
    
    @IBOutlet weak var playerNameField: UITextField!
    //UI part
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 5
        playerNameField.layer.cornerRadius = 5
        playerNameField.font = UIFont(name: "Copperplate", size: movieLabel.font.pointSize)
        playerNameField.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        playerNameField.contentVerticalAlignment = .center
        playerNameField.textAlignment = .center
        movieLabel.font = UIFont(name: "Copperplate", size: movieLabel.font.pointSize)
        startButton.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        startButton.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        movieLabel.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    //On pressing of start button next QuestionViewController is shown
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
