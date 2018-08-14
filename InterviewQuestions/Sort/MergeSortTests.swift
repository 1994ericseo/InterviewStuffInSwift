//
//  MergeSortTests.swift
//  InterviewQuestionsTests
//
//  Created by Eric Seo on 8/13/18.
//  Copyright © 2018 Eric Seo. All rights reserved.
//

import XCTest

class MergeSortTests: XCTestCase {
    
    func testWithSortedArray() {
        let sortedArray = [1,2,3,4]
        let new = MergeSort.mergeSort(array: sortedArray)
        XCTAssertEqual(new, [1,2,3,4])
    }
    
    func testWithOneElementArray() {
        let oneElementArray = [0]
        let new = MergeSort.mergeSort(array: oneElementArray)
        XCTAssertEqual(new, [0])
    }
    
    func testWithABunchNumbers() {
        let array = [1,5,3,10,11,2,6]
        let new = MergeSort.mergeSort(array: array)
        XCTAssertEqual(new, [1,2,3,5,6,10,11])
    }
    
    func testWithReversedSortedArray() {
        let array = [10,9,8,7,6,5]
        let new = MergeSort.mergeSort(array: array)
        XCTAssertEqual(new, [5,6,7,8,9,10])
    }
}
