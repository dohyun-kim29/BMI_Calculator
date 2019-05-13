//
//  ViewController.swift
//  BMI Calculator
//
//  Created by 김도현 on 04/04/2019.
//  Copyright © 2019 김도현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblBMIresult: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @IBAction func btnCal(_ sender: Any) {
        let weight = Double(txtWeight.text!)
        let height = Double(txtHeight.text!)
        let b = array(height : height! / 100, weight : weight!
        )
        let result = funcBMI(a: b)
        lblResult.text = String?(funcCul(c: Double(result)))
    }
    func funcBMI(a: array) -> Double
    {
        print(a.weight/(a.height * a.height))
        return a.weight/(a.height * a.height)
    }
    func funcCul(c : Double) -> String
    {
        print(c)
        if(30 > c && c >= 25)
        {
            return "과체중입니다"
        }
        else if(18 < c && c < 25)
        {
            return "정상입니다"
        }
        else if(c <= 18)
        {
            return "저체중입니다"
        }
        else if(30 < c && c <= 39)
        {
            return "비만입니다"
        }
        else if(40 < c && c < 42)
        {
            return "고도비만입니다"
        }
    else
        {
            return "오류"
        }
    }
    

}
class array
{
    
    var height : Double
    var weight : Double
    init(height : Double, weight : Double)
    {
        self.height = height
        self.weight = weight
    }
}

