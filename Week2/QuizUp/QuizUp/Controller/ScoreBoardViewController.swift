//
//  ScoreBoardViewController.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 3/13/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var scoreBoardTableView: UITableView!
    
    @IBOutlet weak var headerLabel: UILabel!
    
    @IBOutlet weak var restartButton: UIButton!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let playerCell = scoreBoardTableView.dequeueReusableCell(withIdentifier: "playerCell", for: indexPath) as! PlayerTableViewCell
        
//        let defaults = UserDefaults.standard
//        guard let playerData = defaults.object(forKey: "Player") as? Data else {
//            print("Couldn't decode playerData")
//            return playerCell
//        }
//
//        guard let player = try? PropertyListDecoder().decode(Player.self, from: playerData) else {
//            print("Couldn't decode player")
//            return playerCell
//        }
        
//        let keyForPlayers = "Players"
//
//        func load() -> [Player] {
//            guard let encodedData = UserDefaults.standard.array(forKey: keyForPlayers) as? [Data] else {
//                return []
//            }
//
//            return encodedData.map {
//                try! JSONDecoder().decode(Player.self, from: $0)
//            }
//        }
//
//        let allPlayers = load()
        
        let allPlayers = Player.get()
        
        let sortedPlayers = allPlayers.sorted {
            (id1, id2) -> Bool in return id1.score > id2.score
        }
        print(sortedPlayers)
        
        playerCell.setPlayer(sortedPlayers[indexPath.row])
        playerCell.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        return playerCell
    }
    
//    @objc func addPlayerTapped() {
//        let controller = storyboard?.instantiateViewController(withIdentifier: "FrontViewController") as! FrontViewController
//        controller.delegate = self
//
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restartButton.layer.cornerRadius = 5
        restartButton.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        restartButton.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        
        scoreBoardTableView.dataSource = self
        scoreBoardTableView.delegate = self
        
        headerLabel.font = UIFont(name: "Copperplate", size: headerLabel.font.pointSize)
        headerLabel.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
        
        scoreBoardTableView.backgroundColor = UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 1)
    }
    
    @IBAction func restartButtonPressed(_ sender: Any) {
        var customController = ViewController.self()
        customController.setScoreZero()
        performSegue(withIdentifier: "restartQuiz", sender: self)
    }
}

//extension ScoreBoardViewController: AddPlayerDelegate {
//    func didCreatePlayer(player: Player) {
//        players.append(player)
//        scoreBoardTableView.reloadData()
//    }
//}
