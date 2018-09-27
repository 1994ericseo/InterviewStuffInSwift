//
//  BubbleSortTests.swift
//  InterviewQuestionsTests
//
//  Created by Eric Seo on 9/27/18.
//  Copyright © 2018 Eric Seo. All rights reserved.
//

import XCTest

class BubbleSortTests: XCTestCase {
    
    func testBubbleSort() {
        var array = [5,4,3,2,1]
        let bubble = BubbleSort()
        bubble.sort(arr: &array)
        XCTAssertEqual(array, [1,2,3,4,5])
        
        array = [1,2,3,4,5]
        bubble.sort(arr: &array)
        XCTAssertEqual(array, [1,2,3,4,5])
        
        array = [1]
        bubble.sort(arr: &array)
        XCTAssertEqual(array, [1])
        
        array = [5,1,8,4,5,1]
        bubble.sort(arr: &array)
        XCTAssertEqual(array, [1,1,4,5,5,8])
    }
    
}
