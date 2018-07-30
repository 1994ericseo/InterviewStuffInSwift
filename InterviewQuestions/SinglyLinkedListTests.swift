import XCTest

class SinglyLinkedListTests: XCTestCase {
    
    func testReverseLinkedListWithNone() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [])
        XCTAssertEqual(SinglyLinkedList.createArrayWithLinkedList(singlyLinkedList: linkedList?.reverseLinkedList()), [])
    }
    
    func testReverseLinkedListWithOne() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1])
        XCTAssertEqual(SinglyLinkedList.createArrayWithLinkedList(singlyLinkedList: linkedList?.reverseLinkedList()), [1])
    }
    
    func testReverseLinkedListWithTwo() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1,2])
        XCTAssertEqual(SinglyLinkedList.createArrayWithLinkedList(singlyLinkedList: linkedList?.reverseLinkedList()), [2,1])
    }
    
    func testReverseLinkedListWithThree() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1,2,3])
        XCTAssertEqual(SinglyLinkedList.createArrayWithLinkedList(singlyLinkedList: linkedList?.reverseLinkedList()), [3,2,1])
    }
    
    func testSinglyLinkedListToArrayThree() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1,2,3])
        XCTAssertEqual(SinglyLinkedList.createArrayWithLinkedList(singlyLinkedList: linkedList), [1,2,3])
    }
    
    func testSinglyLinkedListToArrayOne() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1])
        XCTAssertEqual(SinglyLinkedList.createArrayWithLinkedList(singlyLinkedList: linkedList), [1])
    }
    
    func testSinglyLinkedListToArrayNone() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [])
        XCTAssertEqual(SinglyLinkedList.createArrayWithLinkedList(singlyLinkedList: linkedList), [])
    }
    
    func testGetLastValueOne() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1])
        XCTAssertEqual(linkedList?.getLastValue(), 1)
    }
    func testGetLastValueTwo() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1,2])
        XCTAssertEqual(linkedList?.getLastValue(), 2)
    }
    func testGetLastValueThree() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1,2,3])
        XCTAssertEqual(linkedList?.getLastValue(), 3)
    }
    
    func testGimmeMiddleOfLinkedListWithNone() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [])
        XCTAssertEqual(linkedList?.gimmeMiddle(), nil)
    }
    
    func testGimmeMiddleOfLinkedListWithOne() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1])
        XCTAssertEqual(linkedList?.gimmeMiddle(), 1)
    }
    
    func testGimmeMiddleOfLinkedListWithTwo() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1,2])
        XCTAssertEqual(linkedList?.gimmeMiddle(), 2)
    }
    
    func testGimmeMiddleOfLinkedListWithThree() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1,2,3])
        XCTAssertEqual(linkedList?.gimmeMiddle(), 2)
    }
    
    func testGimmeMiddleOfLinkedListWithFour() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1,2,3,4])
        XCTAssertEqual(linkedList?.gimmeMiddle(), 3)
    }
    
    
    func testGimmeMiddleOfLinkedListWithFive() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1,2,3,4,5])
        XCTAssertEqual(linkedList?.gimmeMiddle(), 3)
    }
    
    func testGimmeMiddleOfLinkedListWithSix() {
        let linkedList = SinglyLinkedList.createLinkedListWithIntArray(array: [1,2,3,4,5,6])
        XCTAssertEqual(linkedList?.gimmeMiddle(), 4)
    }
    
}
