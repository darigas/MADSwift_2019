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
    
    static func save(_ players: [Player]) {
        var playerNames = [String]()
        var scores = [String]()
        
        for player in players {
            playerNames.append(player.playerName)
            scores.append(String(player.score))
        }
        
        print(players)
        UserDefaults.standard.set(playerNames, forKey: "playerNames")
        UserDefaults.standard.set(scores, forKey: "scores")
    }
    
    static func saveOnePlayer(_ player: Player) {
        var players = Player.get()
        players.append(player)
        Player.save(players)
    }
    
    static func get() -> [Player] {
        var players = [Player]()
        
        let defaults = UserDefaults.standard
        let playerNames = defaults.stringArray(forKey: "playerNames") ?? [String]()
        let scores = defaults.stringArray(forKey: "scores") ?? [String]()
        
        for index in 0..<playerNames.count {
            let player = Player(playerName: playerNames[0], score: Int(scores[0])!)
            players.append(player)
            print(players)
        }
        return players
    }
//    let keyForPlayers = "Players"
//
//    func save(_ players: [Player]) {
//        let data = players.map {
//            try? JSONEncoder().encode($0)
//        }
//        UserDefaults.standard.set(data, forKey: keyForPlayers)
//    }
//
//    func load() -> [Player] {
//        guard let encodedData = UserDefaults.standard.array(forKey: keyForPlayers) as? [Data] else {
//            return []
//        }
//
//        return encodedData.map {
//            try! JSONDecoder().decode(Player.self, from: $0)
//        }
//    }
}
