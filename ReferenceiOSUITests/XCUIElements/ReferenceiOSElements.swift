//
//  ReferenceiOSElements.swift
//  ReferenceiOSUITests
//
//  Created by Imran Hashim on 21/12/2021.
//  Copyright © 2021 ABN AMRO. All rights reserved.
//

import Foundation
import XCTest

//declaring all the elements of the screen and returning the element when being called
//Also when accessibilityIdentifier changes, we just need to change it here without chaning everywhere in the test
enum LoginScreen: String {
    
    case emailTextField = "emailTextField"
    case passwordField = "passwordField"
    case submitButton = "submitButton"
    case resultLabel = "showMoney"
    case errorTextLabel = "errorText"
    
    var element: XCUIElement {
        
        switch self{
        case .emailTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .passwordField:
            return XCUIApplication().secureTextFields[self.rawValue]
        case .resultLabel, .errorTextLabel:
            return XCUIApplication().staticTexts[self.rawValue]
        case .submitButton:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}
