//
//  BMI.swift
//  BMI Calculator
//
//  Created by Arinze Anakor on 23/12/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    private var mWeight = 0.0
    private var mHeight = 0.0
    private var bmi = 0.0
    private var mAdvice: String?
    
    var mColor: UIColor?
    
    var weight: Float {
        get { return Float(mWeight) }
        set(weight) { mWeight = Double(weight) }
    }
    
    var height: Float {
        get { return Float(mHeight) }
        set(height) { mHeight = Double(height) }
    }
    
    mutating func getBmiStr() -> String {
        setBmi()
        return String(format: "%.1f", bmi)
    }
    
    private mutating func setBmi() {
        let value = mWeight / sqrt(mHeight)
        bmi = value
        
        if value < 18.5 {
            mAdvice = "Eat more pies!"
            mColor = UIColor.red
        } else if value < 24.9 {
            mAdvice = "You are fit!"
            mColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else {
            mAdvice = "Eat less pies"
            mColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
    
    var advice: String {
        get { return mAdvice ?? ""}
        set(advice) { mAdvice = advice }
    }
    
    var color: UIColor {
        get { return mColor ?? UIColor.black }
        set(color) { mColor = color }
    }
}
