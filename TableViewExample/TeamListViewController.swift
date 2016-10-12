//
//  ViewController.swift
//  TableViewExample
//
//  Copyright © 2016 Stefan Wapnick. All rights reserved.
//

import UIKit

class TeamListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    private var _teamList = [Team]()
    
    @IBOutlet var teamTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _teamList.append(Team(name: "Team Griffins", upVotes: 999, downVotes: 0))
        _teamList.append(Team(name: "Team Kraken", upVotes: 6, downVotes: 2))
        _teamList.append(Team(name: "Team Panthers", upVotes: 4, downVotes: 1))
        _teamList.append(Team(name: "Team Kthulu", upVotes: 2, downVotes: 0))
        
        teamTableView.delegate = self
        teamTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamTableViewCell") as! TeamTableViewCell
        cell.team = _teamList[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _teamList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        performSegue(withIdentifier: "SegueToDetailsScreen", sender: _teamList[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVc = segue.destination as? DetailsViewController{
            destinationVc.selectedTeam = sender as? Team
        }
    }
    
}

