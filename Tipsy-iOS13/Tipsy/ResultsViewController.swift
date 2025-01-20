//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Sedat Yıldız on 21.01.2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var total:Double?
    var settings:String?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = String(format:"%.2f",total ?? 0.0)
        settingsLabel.text = settings
    }
    

    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true,completion: nil)
    }
}
