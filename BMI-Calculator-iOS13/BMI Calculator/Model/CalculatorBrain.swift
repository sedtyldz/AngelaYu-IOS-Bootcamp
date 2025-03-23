//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sedat Yıldız on 19.01.2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain{
    
    var bmi: BMI?
    func getBMIValue() -> String {
        
        let bmito1DecimalPlace = String(format:"%.1f",bmi?.value ?? 0.0)
        return bmito1DecimalPlace
        
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = (weight / (height * height))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice:"Eat more pies" , color: UIColor.blue)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice:"Fit as a fiddle !" , color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice:"Eat less pies !" , color: UIColor.red)
        }
              
    }
    
}
