//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Raghavendra Mirajkar on 01/07/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmiValue : BMI?
    
    func getHeight(_ height: Float) -> String {
        return String(format: "%.2f", height) + "m"
    }
    
    func getWeight(_ weight: Float) -> String {
        return String(format: "%.0f", weight) + "kg"
    }
    
    mutating func calculateBMI(_ height : Float, _ weight : Float) {
        let bmi = weight / pow(height, 2)
        let string = String(format: "%.1f", bmi)
        if bmi < 18.5 {
            bmiValue = BMI(value: string, advice: "Eat more pies!", color: .systemBlue)
        } else if bmi <= 25 {
            bmiValue = BMI(value: string, advice: "Fit as a fiddle", color: .systemGreen)
        } else {
            bmiValue = BMI(value: string, advice: "Eat less pies!", color: .systemPink)
        }
        bmiValue?.value = String(format: "%.1f", bmi)
    }
    
    func getBMIValue() -> String {
        return bmiValue?.value ?? "Nil"
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? .clear
    }
    
}
