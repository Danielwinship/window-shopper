//
//  ViewController.swift
//  window-shopper
//
//  Created by Daniel Winship on 12/22/17.
//  Copyright © 2017 Daniel Winship. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var priceTextField: CurrencyTextField!
    @IBOutlet weak var wageTextField: CurrencyTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y:0, width:view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(.white, for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTextField.inputAccessoryView = calcButton
        priceTextField.inputAccessoryView = calcButton
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
    }

  @objc func calculate() {
    if let wageTxt = wageTextField.text, let priceTxt = priceTextField.text {
        if let wage = Double(wageTxt), let price = Double(priceTxt) {
            view.endEditing(true)
            resultLabel.isHidden = false
            hoursLabel.isHidden = false
            resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            
        }
     }
    }
  
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTextField.text = ""
        priceTextField.text = ""
    }
    

}

