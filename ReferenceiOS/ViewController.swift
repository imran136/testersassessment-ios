//
//  ViewController.swift
//  ReferenceiOS
//
//  Created by Dunya Kirkali on 27/03/2019.
//  Copyright © 2019 ABN AMRO. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!{
        didSet {
            emailTextField.accessibilityIdentifier = "emailTextField"
        }
    }
    @IBOutlet weak var passwordField: UITextField!{
        didSet {
            passwordField.accessibilityIdentifier = "passwordField"
        }
    }
    @IBOutlet weak var errorText: UILabel!{
        didSet {
            errorText.accessibilityIdentifier = "errorText"
            errorText.text=""
        }
    }
    @IBOutlet weak var showMoney: UILabel! {
        didSet {
            showMoney.accessibilityIdentifier = "showMoney"
        }
    }
    @IBOutlet weak var submitButton: UIButton!{
        didSet {
            submitButton.accessibilityIdentifier = "submitButton"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func generate(_ sender: Any) {
        //if email and password is valid then showing the generated amount
        if isEmailValid(emailTextField.text ?? "") && isPasswordValid(passwordField.text ?? ""){
            errorText.text=""
            // Generate amount
            let amount = Float.random(in: 100 ..< 100000000)

            // Format
            if let formattedAmount = CurrencyHelper.format(amount: amount as NSNumber) {
                showMoney.attributedText = CurrencyHelper.attributify(amount: formattedAmount)
            }
        }else{
            errorText.text="Please provide valid credentials"
            showMoney.text=""
        }
    }

    
    //checking if the email is valid or not
    func isEmailValid(_ value: String) -> Bool {
        do {
            if try NSRegularExpression(pattern: "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$", options: .caseInsensitive).firstMatch(in: value, options: [], range: NSRange(location: 0, length: value.count)) == nil {
                return false
            }
        } catch {
            return false
        }
        return true
    }
    
    //checking if the password legnth is smaller then 6 or not
    func isPasswordValid(_ value: String) -> Bool {
        if value.count<6 {
            return false
        } else {
            return true
        }
    }
}
