//
//  TeamTableViewCell.swift
//  TableViewExample
//
//  Created by Lisa Serbin on 2016-10-10.
//  Copyright © 2016 Stefan Wapnick. All rights reserved.
//

import Foundation
import UIKit

class TeamTableViewCell: UITableViewCell{
    
    @IBOutlet var upVotesLabel: UILabel!
    @IBOutlet var downVotesLabel: UILabel!
    @IBOutlet var teamNameLabel: UILabel!
    
    private var _team : Team!
    
    var team : Team{
        get{
            return _team
        }
        set(newValue){
            _team = newValue
            teamNameLabel.text = _team.name
            upVotesLabel.text = _team.upVotes.description
            downVotesLabel.text = _team.downVotes.description
        }
    }
}
