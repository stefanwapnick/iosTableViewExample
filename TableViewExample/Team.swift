//
//  Team.swift
//  TableViewExample
//
//  Copyright © 2016 Stefan Wapnick. All rights reserved.
//

import Foundation

class Team{
 
    var name : String
    var upVotes : Int
    var downVotes : Int
    
    init(name : String, upVotes: Int, downVotes : Int){
        self.name = name
        self.upVotes = upVotes
        self.downVotes = downVotes
    }
    
}
