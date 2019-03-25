//
//  Player.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 3/13/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation

struct Player: Codable {
    var playerName: String
    var score: Int
    
    init(playerName: String, score: Int){
        self.playerName = playerName
        self.score = score
    }
    
    static func get() -> [Player] {
        var players = [Player]()
        let defaults = UserDefaults.standard
        let names = defaults.stringArray(forKey: "names") ?? [String]()
        let scores = defaults.stringArray(forKey: "scores") ?? [String]()
        
        for index in 0..<names.count {
            let player = Player(playerName: names[index], score: Int(scores[index])!)
            players.append(player)
        }
        return players.sorted(by: { $0.score > $1.score })
    }
    
    static func save(player: Player) {
        var players = get()
        players.append(player)
        var names = [String]()
        var scores = [String]()
        
        for player in players {
            names.append(player.playerName)
            scores.append(String(player.score))
        }
        
        UserDefaults.standard.set(names, forKey: "names")
        UserDefaults.standard.set(scores, forKey: "scores")
    }
}
