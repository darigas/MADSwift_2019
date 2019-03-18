//
//  FrontViewController.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 2/19/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

//protocol AddPlayerDelegate {
//    func didCreatePlayer(player: Player)
//}

var players = [Player]()
var currentPlayerName: String = ""
//var currentPlayer: Player = Player(playerName: "player", score: 0)

class FrontViewController: UIViewController {

    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var playerNameField: UITextField!
    
    //UI part
    
//    var delegate: AddPlayerDelegate?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 5
        
        playerNameField.layer.cornerRadius = 5
        playerNameField.font = UIFont(name: "Copperplate", size: movieLabel.font.pointSize)
        playerNameField.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        playerNameField.contentVerticalAlignment = .center
        playerNameField.textAlignment = .center
        
        startButton.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        startButton.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        movieLabel.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        movieLabel.font = UIFont(name: "Copperplate", size: movieLabel.font.pointSize)
    }
    
    //On pressing of start button next QuestionViewController is shown
    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        addPlayer()
//        addPlayerTapped()
        performSegue(withIdentifier: "startQuiz", sender: self)
    }
    
    func addPlayer(){
        
        guard playerNameField.text != "" else {
            
            let alert = UIAlertController.init(title: "Error", message: "Fill out your name", preferredStyle: .alert)
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            return
        }
        currentPlayerName = playerNameField.text!
    }
//
//    @objc func addPlayerTapped() {
//        guard playerNameField.text != "" else {
//
//            let alert = UIAlertController.init(title: "Error", message: "Fill out your name", preferredStyle: .alert)
//            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
//            alert.addAction(okButton)
//            self.present(alert, animated: true, completion: nil)
//            return
//        }
//        let newPlayer = Player.init(playerName: playerNameField.text!, score: 0)
//        delegate?.didCreatePlayer(player: newPlayer)
//    }
}
