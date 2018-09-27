class Heap {
    var array: [Int] = []
    
    static func getParentIndexOfNode(atIndex index: Int) -> Int {
        if index <= 0 {
            return -1
        }
        return (index-1)/2
    }
    
    static func getLeftChildIndexOfNode(atIndex index: Int) -> Int {
        return (index*2) + 1
    }
    
    static func getRightChildIndexOfNode(atIndex index: Int) -> Int {
        return (index*2) + 2
    }
    
    func parentOfNodeAtIndexExists(atIndex index: Int) -> Bool {
        let parentIndex = Heap.getParentIndexOfNode(atIndex: index)
        return (0..<array.count).contains(parentIndex) && (0..<array.count).contains(index)
    }
    
    func leftChildOfNodeAtIndexExists(atIndex index: Int) -> Bool {
        let leftChildIndex = Heap.getLeftChildIndexOfNode(atIndex: index)
        return (0..<array.count).contains(leftChildIndex) && (0..<array.count).contains(index)
    }
    
    func rightChildOfNodeAtIndexExists(atIndex index: Int) -> Bool {
        let rightChildIndex = Heap.getRightChildIndexOfNode(atIndex: index)
        return (0..<array.count).contains(rightChildIndex) && (0..<array.count).contains(index)
    }
    
    func getParentValueOfNode(atIndex index: Int) -> Int? {
        if parentOfNodeAtIndexExists(atIndex: index) {
            return array[Heap.getParentIndexOfNode(atIndex: index)]
        }
        return nil
    }
    
    func getLeftChildValueOfNode(atIndex index: Int) -> Int? {
        if leftChildOfNodeAtIndexExists(atIndex: index) {
            return array[Heap.getLeftChildIndexOfNode(atIndex: index)]
        }
        return nil
    }
    
    func getRightChildValueOfNode(atIndex index: Int) -> Int? {
        if rightChildOfNodeAtIndexExists(atIndex: index) {
            return array[Heap.getRightChildIndexOfNode(atIndex: index)]
        }
        return nil
    }
}

protocol HeapCharacteristics {
    func heapifyUp()
    func heapifyDown()
    func insert(value: Int)
}

class MinHeap: Heap, HeapCharacteristics {
    func heapifyUp() {
        var index = array.count - 1
        while parentOfNodeAtIndexExists(atIndex: index) {
            guard let parentNode = getParentValueOfNode(atIndex: index) else {
                return
            }
            if parentNode > array[index] {
                let parentIndex = Heap.getParentIndexOfNode(atIndex: index)
                array.swapAt(index, parentIndex)
                index = parentIndex
            } else {
                return
            }
        }
    }
    
    func heapifyDown() {
        var index = 0
        while leftChildOfNodeAtIndexExists(atIndex: index) {
            var smallerChildIndex = Heap.getLeftChildIndexOfNode(atIndex: index)
            if rightChildOfNodeAtIndexExists(atIndex: index) {
                let rightChildIndex = Heap.getRightChildIndexOfNode(atIndex: index)
                if array[rightChildIndex] < array[smallerChildIndex] {
                    smallerChildIndex = rightChildIndex
                }
            }
            if array[index] < array[smallerChildIndex] {
                return
            } else {
                array.swapAt(index, smallerChildIndex)
                index = smallerChildIndex
            }
        }
    }
    
    func insert(value: Int) {
        array.append(value)
        heapifyUp()
    }
    
    func deleteFirst() -> Int? {
        if array.count == 0 {
            return nil
        }
        array.swapAt(0, array.count-1)
        let element = array.remove(at: array.count-1)
        heapifyDown()
        
        return element
    }
    
    func heapSort(arr: [Int]) -> [Int] {
        for value in arr { // o(n)
            insert(value: value) // o(log n)
        }
        
        var sortedArray = [Int]()
        
        while array.count > 0 { // o(n)
            if let element = deleteFirst() { // o(log n)
                sortedArray.append(element)
            }
        }
        return sortedArray
    }
}

class MaxHeap: Heap, HeapCharacteristics {
    func heapifyUp() {
        
    }
    
    func heapifyDown() {
        
    }
    
    func insert(value: Int) {
        array.append(value)
        heapifyUp()
    }
}

