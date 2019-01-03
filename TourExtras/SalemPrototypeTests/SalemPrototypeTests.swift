//
//  SalemPrototypeTests.swift
//  SalemPrototypeTests
//
//  Created by Raymond Edgar Swartz on 12/18/18.
//  Copyright © 2018 Swartzware. All rights reserved.
//

import XCTest
@testable import SalemPrototype

class SalemPrototypeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testImageContentCreation30() {
        var ic : ImageContent?
        let p = UIImage(named: "30")
        if let temp = p {
            ic = ImageContent(image: temp, text: "")
        }
        XCTAssertFalse(ic == nil)
    }
    
    func testImageContentCreation4() {
        var ic : ImageContent?
        let p = UIImage(named: "4")
        if let temp = p {
            ic = ImageContent(image: temp, text: "Hocus Pocus House")
        }
        XCTAssertFalse(ic == nil)
    }
    
    func testImageContentCreation29a() {
        var ic : ImageContent?
        let p = UIImage(named: "29a")
        if let temp = p {
            ic = ImageContent(image: temp, text: "")
        }
        XCTAssertFalse(ic == nil)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
