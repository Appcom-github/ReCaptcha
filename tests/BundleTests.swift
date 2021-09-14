//
//  File.swift
//  
//
//  Created by Claude Houle on 2021-09-14.
//

import Foundation
import ReCaptcha
import XCTest

class BundleTests: XCTestCase {
    
    func testLoadHTML() {
        
        let bundle = ReCaptcha.Config.bundle
        
        let path = bundle.path(forResource: "recaptcha", ofType: "html")
        XCTAssertNotNil(path)
        
        let url = URL(string: path!)
        XCTAssertNotNil(url)
    }
    
}
