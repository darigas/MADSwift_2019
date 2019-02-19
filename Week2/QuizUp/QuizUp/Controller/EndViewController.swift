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
        // Do any additional setup after loading the view.
    }
    
    func getScore(){
        scoreLabel.text = "You've guessed " + String(customController.showScore()) + " out of 15."
    }
    
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
    
    func restart(){
        customController.setScoreZero()
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
