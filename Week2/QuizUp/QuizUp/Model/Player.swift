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
//    }
//    
//    let keyForPlayers = "Players"
//    
//    func save(_ players: [Player]) {
//        let data = players.map {
//            try? JSONEncoder().encode($0)
//        }
//        UserDefaults.standard.set(data, forKey: keyForPlayers)
//    }
    
//    func load() -> [Player] {
//        guard let encodedData = UserDefaults.standard.array(forKey: keyForPlayers) as? [Data] else {
//            return []
//        }
//        
//        return encodedData.map {
//            try! JSONDecoder().decode(Player.self, from: $0)
//        }
    }
}
