import XCTest

class HeapTests: XCTestCase {
    
    func testGetParentIndex() {
        XCTAssertEqual(Heap.getParentIndexOfNode(atIndex: 0), -1)
        XCTAssertEqual(Heap.getParentIndexOfNode(atIndex: 1), 0)
        XCTAssertEqual(Heap.getParentIndexOfNode(atIndex: 2), 0)
        XCTAssertEqual(Heap.getParentIndexOfNode(atIndex: 3), 1)
        XCTAssertEqual(Heap.getParentIndexOfNode(atIndex: 4), 1)
        XCTAssertEqual(Heap.getParentIndexOfNode(atIndex: 5), 2)
        XCTAssertEqual(Heap.getParentIndexOfNode(atIndex: 6), 2)
        XCTAssertEqual(Heap.getParentIndexOfNode(atIndex: 7), 3)
    }
    
    func testGetLeftChildIndex() {
        XCTAssertEqual(Heap.getLeftChildIndexOfNode(atIndex: 0), 1)
        XCTAssertEqual(Heap.getLeftChildIndexOfNode(atIndex: 1), 3)
        XCTAssertEqual(Heap.getLeftChildIndexOfNode(atIndex: 2), 5)
        XCTAssertEqual(Heap.getLeftChildIndexOfNode(atIndex: 3), 7)
    }
    
    func testGetRightChildIndex() {
        XCTAssertEqual(Heap.getRightChildIndexOfNode(atIndex: 0), 2)
        XCTAssertEqual(Heap.getRightChildIndexOfNode(atIndex: 1), 4)
        XCTAssertEqual(Heap.getRightChildIndexOfNode(atIndex: 2), 6)
        XCTAssertEqual(Heap.getRightChildIndexOfNode(atIndex: 3), 8)
    }
    
    func testParentNodeExists() {
        let heap = Heap()
        heap.array = [0,1,2,3,4,5]
        XCTAssertEqual(heap.parentOfNodeAtIndexExists(atIndex: 0), false)
        XCTAssertEqual(heap.parentOfNodeAtIndexExists(atIndex: 1), true)
        XCTAssertEqual(heap.parentOfNodeAtIndexExists(atIndex: 2), true)
        XCTAssertEqual(heap.parentOfNodeAtIndexExists(atIndex: 3), true)
        XCTAssertEqual(heap.parentOfNodeAtIndexExists(atIndex: 4), true)
        XCTAssertEqual(heap.parentOfNodeAtIndexExists(atIndex: 5), true)
        XCTAssertEqual(heap.parentOfNodeAtIndexExists(atIndex: 6), false)
        XCTAssertEqual(heap.parentOfNodeAtIndexExists(atIndex: 7), false)
        XCTAssertEqual(heap.parentOfNodeAtIndexExists(atIndex: 8), false)
    }
    
    func testLeftChildNodeExists() {
        let heap = Heap()
        heap.array = [0,1,2,3,4,5]
        XCTAssertEqual(heap.leftChildOfNodeAtIndexExists(atIndex: 0), true)
        XCTAssertEqual(heap.leftChildOfNodeAtIndexExists(atIndex: 1), true)
        XCTAssertEqual(heap.leftChildOfNodeAtIndexExists(atIndex: 2), true)
        XCTAssertEqual(heap.leftChildOfNodeAtIndexExists(atIndex: 3), false)
        XCTAssertEqual(heap.leftChildOfNodeAtIndexExists(atIndex: 4), false)
        XCTAssertEqual(heap.leftChildOfNodeAtIndexExists(atIndex: 5), false)
        XCTAssertEqual(heap.leftChildOfNodeAtIndexExists(atIndex: 6), false)
    }
    
    func testRightChildNodeExists() {
        let heap = Heap()
        heap.array = [0,1,2,3,4,5]
        XCTAssertEqual(heap.rightChildOfNodeAtIndexExists(atIndex: 0), true)
        XCTAssertEqual(heap.rightChildOfNodeAtIndexExists(atIndex: 1), true)
        XCTAssertEqual(heap.rightChildOfNodeAtIndexExists(atIndex: 2), false)
        XCTAssertEqual(heap.rightChildOfNodeAtIndexExists(atIndex: 3), false)
        XCTAssertEqual(heap.rightChildOfNodeAtIndexExists(atIndex: 4), false)
        XCTAssertEqual(heap.rightChildOfNodeAtIndexExists(atIndex: 5), false)
        XCTAssertEqual(heap.rightChildOfNodeAtIndexExists(atIndex: 6), false)
    }
    
    func testGetParentValueOfNode() {
        let heap = Heap()
        heap.array = [1,2,4,8,10,15]
        XCTAssertEqual(heap.getParentValueOfNode(atIndex: 0), nil)
        XCTAssertEqual(heap.getParentValueOfNode(atIndex: 1), 1)
        XCTAssertEqual(heap.getParentValueOfNode(atIndex: 2), 1)
        XCTAssertEqual(heap.getParentValueOfNode(atIndex: 3), 2)
        XCTAssertEqual(heap.getParentValueOfNode(atIndex: 4), 2)
        XCTAssertEqual(heap.getParentValueOfNode(atIndex: 5), 4)
        XCTAssertEqual(heap.getParentValueOfNode(atIndex: 6), nil)
    }
    
    func testGetLeftChildValueOfNode() {
        let heap = Heap()
        heap.array = [0,1,2,3,4,5]
        XCTAssertEqual(heap.getLeftChildValueOfNode(atIndex: 0), 1)
        XCTAssertEqual(heap.getLeftChildValueOfNode(atIndex: 1), 3)
        XCTAssertEqual(heap.getLeftChildValueOfNode(atIndex: 2), 5)
        XCTAssertEqual(heap.getLeftChildValueOfNode(atIndex: 3), nil)
        XCTAssertEqual(heap.getLeftChildValueOfNode(atIndex: 4), nil)
        XCTAssertEqual(heap.getLeftChildValueOfNode(atIndex: 5), nil)
        XCTAssertEqual(heap.getLeftChildValueOfNode(atIndex: 6), nil)
    }
    
    func testGetRightChildValueOfNode() {
        let heap = Heap()
        heap.array = [0,1,2,3,4,5]
        XCTAssertEqual(heap.getRightChildValueOfNode(atIndex: 0), 2)
        XCTAssertEqual(heap.getRightChildValueOfNode(atIndex: 1), 4)
        XCTAssertEqual(heap.getRightChildValueOfNode(atIndex: 2), nil)
        XCTAssertEqual(heap.getRightChildValueOfNode(atIndex: 3), nil)
        XCTAssertEqual(heap.getRightChildValueOfNode(atIndex: 4), nil)
        XCTAssertEqual(heap.getRightChildValueOfNode(atIndex: 5), nil)
        XCTAssertEqual(heap.getRightChildValueOfNode(atIndex: 6), nil)
    }
    
    func testMinHeapHeapifyUp() {
        let heap = MinHeap()
        heap.array = [3,8,5,9,7]
        heap.heapifyUp()
        XCTAssertEqual(heap.array, [3,7,5,9,8])
        heap.array = [9,8,5,4,3]
        heap.heapifyUp()
        XCTAssertEqual(heap.array, [3,9,5,4,8])
        heap.array = [0]
        heap.heapifyUp()
        XCTAssertEqual(heap.array, [0])
    }
    
    func testMinHeapHeapifyDown() {
        let heap = MinHeap()
        heap.array = [10,8,5,9,7]
        heap.heapifyDown()
        XCTAssertEqual(heap.array, [5,8,10,9,7])
        heap.array = [10,5,8,9,7]
        heap.heapifyDown()
        XCTAssertEqual(heap.array, [5,7,8,9,10])
        heap.array = [0]
        heap.heapifyDown()
        XCTAssertEqual(heap.array, [0])
    }
    
    func testHeapSort() {
        let heap = MinHeap()
        var sortedArray = heap.heapSort(arr: [25,8,30,1])
        XCTAssertEqual(sortedArray, [1,8,25,30])
        sortedArray = heap.heapSort(arr: [1,2,3,4,5])
        XCTAssertEqual(sortedArray, [1,2,3,4,5])
        sortedArray = heap.heapSort(arr: [1])
        XCTAssertEqual(sortedArray, [1])
        sortedArray = heap.heapSort(arr: [100,90,80,70])
        XCTAssertEqual(sortedArray, [70,80,90,100])
    }
}
