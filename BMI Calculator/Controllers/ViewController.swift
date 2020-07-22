//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    
    var bmi = BMI()
    
    let goToResult = "goToResult"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func weightSliderListener(_ sender: UISlider) {
        bmi.weight = sliderWeight.value
        labelWeight.text = String(format: "%0.1fkg", bmi.weight)
    }
    
    @IBAction func heightSliderListener(_ sender: UISlider) {
        bmi.height = sliderHeight.value
        labelHeight.text = String(format: "%0.1fm", bmi.height)
    }
    
    @IBAction func btnCalculate(_ sender: UIButton) {
        if bmi.weight <= 0 || bmi.height <= 0 {
            print("Invalid input(s). Weight: \(bmi.weight), height: \(bmi.height)")
            return
        }
        
        print("Weight: \(bmi.weight), height: \(bmi.height)")
        
        self.performSegue(withIdentifier: goToResult, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == goToResult {
            let destination = segue.destination as! ResultViewCtrl
            destination.bmiValue = bmi.getBmiStr()
            destination.advice = bmi.advice
            destination.color = bmi.color
        }
    }
}

