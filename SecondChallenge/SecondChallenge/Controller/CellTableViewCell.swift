//
//  CellTableViewCell.swift
//  SecondChallenge
//
//  Created by Dallin Smuin on 5/15/19.
//  Copyright © 2019 Dallin Smuin. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    
    //*********************************************************
    // MARK: - Properties
    //*********************************************************
    
    var entry: Entry? {
        didSet {
            guard let entry = entry else { return }
            updateCell(with: entry)
        }
    }

    //*********************************************************
    // MARK: - IBOutlets
    //*********************************************************
    
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    //*********************************************************
    // MARK: - Methods
    //*********************************************************
    
    func updateCell(with entry: Entry) {
        foodNameLabel.text = entry.nameOfFood
        ratingLabel.text = entry.rating
        caloriesLabel.text = entry.calories
        dateLabel.text = entry.dayConsumed
    }
}
