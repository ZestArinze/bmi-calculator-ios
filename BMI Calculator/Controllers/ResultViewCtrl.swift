//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Arinze Anakor on 22/12/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewCtrl: UIViewController {

    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelAdvice: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelScore.text = bmiValue
        view.backgroundColor = color
        labelAdvice.text = advice
    }
    
    @IBAction func btnRecalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
