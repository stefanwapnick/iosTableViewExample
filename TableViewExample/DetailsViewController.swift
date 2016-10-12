//
//  ViewController.swift
//  TableViewExample
//
//  Copyright © 2016 Stefan Wapnick. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedTeam : Team?
    
    @IBOutlet var teamNameLabel: UILabel!
    @IBOutlet var upVotesLabel: UILabel!
    @IBOutlet var downVotesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let team = selectedTeam{
            teamNameLabel.text = team.name
            upVotesLabel.text = team.upVotes.description
            downVotesLabel.text = team.downVotes.description
        }
        
    }
    
}

