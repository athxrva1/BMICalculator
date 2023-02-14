//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Atharva Dagaonkar on 14/02/23.

//

import Foundation
import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiToOne = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOne
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float)
    {
        let bmiValue = weight / (pow(height, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.orange)
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit!", color: UIColor.green)
        }
        else
        {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
            
    }
    
    
}
