//
//  SubstringTests.swift
//  InterviewQuestionsTests
//
//  Created by Eric Seo on 9/6/18.
//  Copyright © 2018 Eric Seo. All rights reserved.
//

import XCTest

class SubstringTests: XCTestCase {
    
    func testSubstring() {
        XCTAssertEqual(Substring().largestSubstringNoDuplicates(string: "abcdef"), "abcdef")
    }
    
    func testSubstringTwo() {
        XCTAssertEqual(Substring().largestSubstringNoDuplicates(string: "abcda"), "abcd")
    }
    
    func testSubstringThree() {
        XCTAssertEqual(Substring().largestSubstringNoDuplicates(string: "abcdaxyzqr"), "bcdaxyzqr")
    }
    
}
