//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmivalue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format:"%.2f",sender.value)
        heightLabel.text = String("\(height)m")
        
        
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight  = String(Int(sender.value))
        weightLabel.text = String("\(weight)Kg")
       
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height:height, weight:weight)
        
        
        let bmi = (weight / (height * height))
        bmivalue = String(format:"%.1f",bmi)
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)

        // başka sayfaya geçme
        // self.present(secondVC,animated: true,completion: nil )
        
        
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
            let destinationVC = segue.destination as! ResultViewController
           
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    


}

