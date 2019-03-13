//
//  PlayerTableViewCell.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 3/13/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var playerNameLabel: UILabel!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setPlayer(_ player: Player){
        playerNameLabel.text = player.playerName
        playerScoreLabel.text = String(player.score)
        
        playerScoreLabel.font = UIFont(name: "Copperplate", size: playerScoreLabel.font.pointSize)
        playerNameLabel.font = UIFont(name: "Copperplate", size: playerNameLabel.font.pointSize)
    }
}
