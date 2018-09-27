//
//  QuickSortTests.swift
//  InterviewQuestionsTests
//
//  Created by Eric Seo on 8/14/18.
//  Copyright © 2018 Eric Seo. All rights reserved.
//

import XCTest

class QuickSortTests: XCTestCase {
    
    func testSort() {
        var arr = [5,3,1,8,2,9]
        QuickSort().quickSort(array: &arr, first: 0, last: arr.count-1)
        XCTAssertEqual(arr, [1,2,3,5,8,9])
        
    }
    
}
