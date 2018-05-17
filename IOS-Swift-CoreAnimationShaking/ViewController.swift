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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityTextField.delegate = self
        provinceTextField.delegate = self
        countryTextField.delegate = self
        
        cityTextField.tag = 100
        provinceTextField.tag = 200
        countryTextField.tag = 300
        
        cityTextField.customizeTextField()
        cityTextField.uncustomizeTextField()
        
        provinceTextField.customizeTextField()
        provinceTextField.uncustomizeTextField()
        
        countryTextField.customizeTextField()
        countryTextField.uncustomizeTextField()
        
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField.tag {
        case 100:
            cityTextField.customizeTextField()
            cityTextField.shake(horizantaly: 4)
        case 200:
            provinceTextField.customizeTextField()
            provinceTextField.shake(Veticaly: 4)
        case 300:
            countryTextField.customizeTextField()
            countryTextField.shake(horizantaly: 4, Veticaly: 4)
        default:
            //todo
            break
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        switch textField.tag {
        case 100:
            cityTextField.uncustomizeTextField()
        case 200:
            provinceTextField.uncustomizeTextField()
        case 300:
            countryTextField.uncustomizeTextField()
        default:
            //todo
            break
        }
    }
    

}

