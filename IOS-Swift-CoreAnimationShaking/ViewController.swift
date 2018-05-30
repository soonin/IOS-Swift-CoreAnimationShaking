//
//  ViewController.swift
//  IOS-Swift-CoreAnimationShaking
//
//  Created by Pooya Hatami on 2018-05-16.
//  Copyright © 2018 Pooya Hatami. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var provinceTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    
    let cityBGColor = (UIColor(red: 0.99573236703872681, green: 0.8809238076210022, blue: 0.97171205282211304, alpha: 1.0))
    let provinceBGColor = (UIColor(red: 0.82944579409999997, green: 0.8460627906, blue: 1, alpha: 1.0))
    let countryBGColor = (UIColor(red: 0.86162301740000002, green: 0.97679832229999997, blue: 0.9881622779, alpha: 1.0))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityTextField.delegate = self
        provinceTextField.delegate = self
        countryTextField.delegate = self
        
        cityTextField.tag = 100
        provinceTextField.tag = 200
        countryTextField.tag = 300
        
        cityTextField.customizeTextField()
        cityTextField.uncustomizeTextField(backGroundColor: cityBGColor)
        
        provinceTextField.customizeTextField()
        provinceTextField.uncustomizeTextField(backGroundColor: provinceBGColor)
        
        countryTextField.customizeTextField()
        countryTextField.uncustomizeTextField(backGroundColor: countryBGColor)
        
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField.tag {
        case 100:
            cityTextField.customizeTextField()
            cityTextField.shake(horizantaly: 4)
        case 200:
            provinceTextField.customizeTextField()
            provinceTextField.shake(Verticaly: 4)
        case 300:
            countryTextField.customizeTextField()
            countryTextField.shake(horizantaly: 4, Verticaly: 4)
        default:
            //todo
            break
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        switch textField.tag {
        case 100:
            cityTextField.uncustomizeTextField(backGroundColor: cityBGColor)
        case 200:
            provinceTextField.uncustomizeTextField(backGroundColor: provinceBGColor)
        case 300:
            countryTextField.uncustomizeTextField(backGroundColor: countryBGColor)
        default:
            //todo
            break
        }
    }
    

}

