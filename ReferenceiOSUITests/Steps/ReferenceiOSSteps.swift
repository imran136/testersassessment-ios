//
//  ReferenceiOSSteps.swift
//  ReferenceiOSUITests
//
//  Created by Imran Hashim on 21/12/2021.
//  Copyright © 2021 ABN AMRO. All rights reserved.
//

import Foundation
import XCTest

//Contains all the step definitions
extension ReferenceiOSUITestBase {
    
    func givenAppIsReady(){
        XCTContext.runActivity(named: "Given app is ready"){ _ in
            XCTAssertTrue(LoginScreen.submitButton.element.exists)
        }
    }
    
    func andIEnterEmail(email: String){
        XCTContext.runActivity(named: "And I enter email \(email)"){ _ in
            LoginScreen.emailTextField.element.tap()
            LoginScreen.emailTextField.element.typeText(email)
        }
    }
    
    func andIEnterPassword(password: String){
        XCTContext.runActivity(named: "And I enter password \(password)"){ _ in
            LoginScreen.passwordField.element.tap()
            LoginScreen.passwordField.element.typeText(password)
        }
    }
    
    func whenISubmit(){
        XCTContext.runActivity(named: "When I Submit"){ _ in
            LoginScreen.submitButton.element.tap()
        }
    }
    func thenIShouldSeeResultAsCurrency(){
        XCTContext.runActivity(named: "Then I should see result shown as currency"){ _ in
            let result = LoginScreen.resultLabel.element
            //Using AsyncAssert to wait till the element is visible
            XCTAsyncAssert(result)
            XCTAssertTrue(isCurrencyValid(result.label))
        }
    }
    
    func thenIShouldSeeErrorMessage(message: String){
        XCTContext.runActivity(named: "Then I should see error message \(message)"){ _ in
            let result = LoginScreen.errorTextLabel.element
            XCTAsyncAssert(result)
            XCTAssertTrue(result.label == message)
        }
    }
    
    func AndIShouldResultEmpy(){
        XCTContext.runActivity(named: "And I should see result empty"){ _ in
            let result = LoginScreen.resultLabel.element
            XCTAsyncAssertFalse(result)
        }
    }
}
