//
//  FeatureTest.swift
//  ReferenceiOSUITests
//
//  Created by Imran Hashim on 21/12/2021.
//  Copyright © 2021 ABN AMRO. All rights reserved.
//

import Foundation
import XCTest

//Contains all the test cases for login screen
class LoginTest: ReferenceiOSUITestBase{
    
    func testHappyFlowWithValidEmailValidPassword(){
        givenAppIsReady()
        andIEnterEmail(email: "avalidemail@valid.com")
        andIEnterPassword(password: "1234qwer")
        whenISubmit()
        thenIShouldSeeResultAsCurrency()
    }
}
