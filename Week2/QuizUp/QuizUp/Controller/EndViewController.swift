//
//  EndViewController.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 2/19/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {

    @IBOutlet weak var phraseLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var restartButton: UIButton!
    
    var customController = ViewController.self()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getScore()
        getPhrase()
        restartButton.layer.cornerRadius = 5
        restartButton.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        restartButton.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        scoreLabel.font = UIFont(name: "Copperplate", size: scoreLabel.font.pointSize)
        phraseLabel.font = UIFont(name: "Copperplate", size: phraseLabel.font.pointSize)
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        phraseLabel.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        scoreLabel.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    //Showing the final score
    func getScore(){
        scoreLabel.text = "You've guessed " + String(customController.showScore()) + " out of 15."
    }
    
    //Showing the performance level according to the score
    func getPhrase(){
        if customController.showScore() >= 0 && customController.showScore() <= 5{
            phraseLabel.text = "Poor..."
        }
        else if customController.showScore() >= 6 && customController.showScore() <= 10{
            phraseLabel.text = "Not bad"
        }
        else if customController.showScore() >= 11 && customController.showScore() <= 14{
            phraseLabel.text = "Good"
        }
        else {
            phraseLabel.text = "Excellent!"
        }
    }
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        restart()
    }
    
    //Going back to the start of the quiz if restart button is pressed
    func restart(){
        customController.setScoreZero()
        //dismiss(animated: true, completion: nil)
        performSegue(withIdentifier: "restart", sender: self)
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
