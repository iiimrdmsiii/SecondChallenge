//
//  EntryTableViewController.swift
//  SecondChallenge
//
//  Created by Dallin Smuin on 5/16/19.
//  Copyright © 2019 Dallin Smuin. All rights reserved.
//

import UIKit

class EntryTableViewController: UITableViewController {
    
    //*********************************************************
    // MARK: - Properties
    //*********************************************************
    
    var entry: Entry?
    
    //*********************************************************
    // MARK: - IBOutlets
    //*********************************************************
    
    @IBOutlet weak var nameOfFoodTextField: UITextField!
    @IBOutlet weak var caloriesTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var ratingTextField: UITextField!
    
    
    //*********************************************************
    // MARK: - Override Methods and Methods
    //*********************************************************
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let entry = entry {
            nameOfFoodTextField.text = entry.nameOfFood
            caloriesTextField.text = entry.calories
            dateTextField.text = entry.dayConsumed
            ratingTextField.text = entry.rating
        }
    }

    @IBAction func saveButtonTapped(_ sender: Any) {
        entry = Entry(nameOfFood: nameOfFoodTextField.text ?? "", calories: caloriesTextField.text ?? "", dayConsumed: dateTextField.text ?? "", rating: ratingTextField.text ?? "")
        performSegue(withIdentifier: "segue", sender: nil)
    }
}
