//
//  ReferenceiOSUtil.swift
//  ReferenceiOSUITests
//
//  Created by Imran Hashim on 21/12/2021.
//  Copyright © 2021 ABN AMRO. All rights reserved.
//

import Foundation
import XCTest

extension ReferenceiOSUITestBase{
    
    //Checking if the value contains € character and has 2 digits after , (comma)
    func isCurrencyValid(_ value: String) -> Bool {
        let range = NSRange(location: 0, length: value.count)
        let regex = try! NSRegularExpression(pattern: "[€{1} 0-9.],[0-2]{2}")
        
        if regex.firstMatch(in: value, options: [], range: range) != nil {
                return true
              }
            return false
    }
    
    //AsyncAssert method to wait upto 3 second till the element is there
    func XCTAsyncAssert(_ element: XCUIElement){
        let isElementExist = element.waitForExistence(timeout: 3)
        if isElementExist{
            XCTAssertTrue(element.exists)
        }
    }
    
    //AsyncAssertFalse method to wait upto 3 second to verify the element is not there
    func XCTAsyncAssertFalse(_ element: XCUIElement){
        let isElementExistNot = element.waitForExistence(timeout: 3)
        if isElementExistNot{
            XCTAssertFalse(element.exists)
        }
    }
    
}
