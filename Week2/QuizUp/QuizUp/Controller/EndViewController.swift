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
    
    @IBOutlet weak var scoreButton: UIButton!
    
    var customController = ViewController.self()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getScore()
        getPhrase()
        
//        let somePlayer = Player(playerName: "Aigerim", score: 15)
        let currentPlayer = Player.init(playerName: currentPlayerName, score: customController.showScore())
        Player.save(player: currentPlayer)
//        players.append(currentPlayer)
                
//        let defaults = UserDefaults.standard
//        defaults.set(try? PropertyListEncoder().encode(currentPlayer), forKey: "Player")
//
//        let keyForPlayers = "Players"
//
//        func save(_ players: [Player]) {
//            let data = players.map {
//                try? JSONEncoder().encode($0)
//            }
//            UserDefaults.standard.set(data, forKey: keyForPlayers)
//        }
//
//        save(players)
        
        restartButton.layer.cornerRadius = 5
        restartButton.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        restartButton.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        
        scoreButton.layer.cornerRadius = 5
        scoreButton.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        scoreButton.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        
        scoreLabel.font = UIFont(name: "Copperplate", size: scoreLabel.font.pointSize)
        scoreLabel.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        
        phraseLabel.font = UIFont(name: "Copperplate", size: phraseLabel.font.pointSize)
        phraseLabel.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        //Do any additional setup after loading the view.
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
    
    @IBAction func scoreButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "showScoreBoard", sender: self)
    }
}
