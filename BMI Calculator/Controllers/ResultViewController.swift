//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Raghavendra Mirajkar on 01/07/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String = ""
    var advice : String = ""
    var color : UIColor = .white
    
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundColor: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResult.text = bmiValue
        adviceLabel.text = advice
        backgroundColor.backgroundColor = color
        
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
