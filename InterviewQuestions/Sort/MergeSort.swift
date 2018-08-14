class MergeSort {
    static func mergeSort(array: [Int]) -> [Int] {
        if array.count == 1 {
            return array
        }
        
        let midpoint = array.count/2
        var a = Array(array[0..<midpoint])
        var b = Array(array[midpoint..<array.count])
        
        a = mergeSort(array: a)
        b = mergeSort(array: b)
        
        return MergeSort.merge(a: a, b: b)
        
    }
    
    static private func merge(a: [Int], b: [Int]) -> [Int] {
        var firstArray = a
        var secondArray = b
        
        var newArray: [Int] = []
        
        while !firstArray.isEmpty && !secondArray.isEmpty {
            if firstArray[0] < secondArray[0] {
                newArray.append(firstArray.removeFirst())
            } else {
                newArray.append(secondArray.removeFirst())
            }
        }
        
        if firstArray.isEmpty {
            for element in secondArray {
                newArray.append(element)
            }
        } else {
            for element in firstArray {
                newArray.append(element)
            }
        }
        
        return newArray
    }
}
