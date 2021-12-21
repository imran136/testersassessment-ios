//
//  ReferenceiOSSteps.swift
//  ReferenceiOSUITests
//
//  Created by Imran Hashim on 21/12/2021.
//  Copyright © 2021 ABN AMRO. All rights reserved.
//

import Foundation
import XCTest

extension ReferenceiOSUITestBase {
    
    func givenAppIsReady(){
        XCTContext.runActivity(named: "Given App is ready"){ _ in
            XCTAssertTrue(LoginScreen.submitButton.element.exists)
        }
    }
    
    func andIEnterEmail(email: String){
        XCTContext.runActivity(named: "And I Enter Email \(email)"){ _ in
            LoginScreen.emailTextField.element.tap()
            LoginScreen.emailTextField.element.typeText(email)
        }
    }
    
    func andIEnterPassword(password: String){
        XCTContext.runActivity(named: "And I Enter Password \(password)"){ _ in
            LoginScreen.passwordField.element.tap()
            LoginScreen.passwordField.element.typeText(password)
        }
    }
    
    func whenISubmit(){
        XCTContext.runActivity(named: "When I Submit"){ _ in
            LoginScreen.submitButton.element.tap()
        }
    }
    func thenIShouldSeeResult(){
        XCTContext.runActivity(named: "Then I Should See Result"){ _ in
            let result = LoginScreen.resultLabel.element
            XCTAssertTrue(result.exists)
        }
    }
}
