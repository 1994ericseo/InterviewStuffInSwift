//
//  InsertionSortTests.swift
//  InterviewQuestionsTests
//
//  Created by Eric Seo on 8/13/18.
//  Copyright © 2018 Eric Seo. All rights reserved.
//

import XCTest

class InsertionSortTests: XCTestCase {
    
    func testWithSortedArray() {
        var sortedArray = [1,2,3,4]
        InsertionSort.sort(array: &sortedArray)
        XCTAssertEqual(sortedArray, [1,2,3,4])
    }
    
    func testWithOneElementArray() {
        var oneElementArray = [0]
        InsertionSort.sort(array: &oneElementArray)
        XCTAssertEqual(oneElementArray, [0])
    }
    
    func testWithABunchNumbers() {
        var array = [1,5,3,10,11,2,6]
        InsertionSort.sort(array: &array)
        XCTAssertEqual(array, [1,2,3,5,6,10,11])
    }
    
    func testWithReversedSortedArray() {
        var array = [10,9,8,7,6,5]
        InsertionSort.sort(array: &array)
        XCTAssertEqual(array, [5,6,7,8,9,10])
    }
    
}
