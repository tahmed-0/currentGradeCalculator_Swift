//
//  ViewController.swift
//  finalGrader
//
//  Created by Ahmed on 10/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var cGrade: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var wGrade: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calc(_ sender: Any) {
        let goal = Double(wGrade.text!)
        let current = Double(cGrade.text!)!
        let gWeight = Double(weight.text!)!
        
        let convertToP = Double(gWeight * 0.01)
        
        let finalGrade = Double(goal! - current * (1-convertToP))/convertToP
        
       display.text = "You need to score \(finalGrade)%"

        
        print(finalGrade)
        
    }
    
    @IBAction func clear(_ sender: Any) {
        display.text = ""
        cGrade.text = ""
        wGrade.text = ""
        weight.text = ""
    }
    
}

