//
//  FoodLogTableViewController.swift
//  SecondChallenge
//
//  Created by Dallin Smuin on 5/15/19.
//  Copyright © 2019 Dallin Smuin. All rights reserved.
//

import UIKit

class FoodLogTableViewController: UITableViewController {
    
    //*********************************************************
    // MARK: - Properties
    //*********************************************************
    
    var entrys = [Entry]()
    
    //*********************************************************
    // MARK: - Override methods
    //*********************************************************

    override func viewDidLoad() {
        super.viewDidLoad()
        
         tableView.rowHeight = UITableView.automaticDimension
         tableView.estimatedRowHeight = 130

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entrys.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell else { return UITableViewCell() }
        
        cell.entry = entrys[indexPath.row]

        return cell
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        if let source = segue.source as? EntryTableViewController, let entry = source.entry {
            entrys.append(entry)
            tableView.reloadData()
        }
    }
    
}
