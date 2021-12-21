//
//  ReferenceiOSUITests.swift
//  ReferenceiOSUITests
//
//  Created by Dunya Kirkali on 27/03/2019.
//  Copyright © 2019 ABN AMRO. All rights reserved.
//  Testing commit

import XCTest

class ReferenceiOSUITests: ReferenceiOSUITestBase {

    func testWithValidEmailValidPassword() {
        //let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.textFields["emailTextField"]/*[[".textFields[\"Email\"]",".textFields[\"emailTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.textFields["emailTextField"]/*[[".textFields[\"Email\"]",".textFields[\"emailTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.typeText("avalidemail@valid.com")
        app/*@START_MENU_TOKEN@*/.secureTextFields["passwordField"]/*[[".secureTextFields[\"Password\"]",".secureTextFields[\"passwordField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.secureTextFields["passwordField"]/*[[".secureTextFields[\"Password\"]",".secureTextFields[\"passwordField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.typeText("1234qwer")
        app/*@START_MENU_TOKEN@*/.staticTexts["Submit"]/*[[".buttons[\"Submit\"].staticTexts[\"Submit\"]",".buttons[\"submitButton\"].staticTexts[\"Submit\"]",".staticTexts[\"Submit\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
}
