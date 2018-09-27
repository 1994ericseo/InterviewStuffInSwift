class MergeSort {
    static func mergeSort(array: [Int]) -> [Int] {
        if array.count <= 1 {
            return array
        }
        
        let midpoint = array.count/2
        let firstHalf = Array(array[0..<midpoint])
        let secondHalf = Array(array[midpoint..<array.count])
        let a = mergeSort(array: firstHalf)
        let b = mergeSort(array: secondHalf)
        return merge(a: a, b: b)
        
    }
    
    static private func merge(a: [Int], b: [Int]) -> [Int] {
        var left = a
        var right = b
        var newArray = [Int]()
        while !left.isEmpty && !right.isEmpty {
            if left[0] <= right[0] {
                newArray.append(left.remove(at: 0))
            } else {
                newArray.append(right.remove(at: 0))
            }
        }
        if !right.isEmpty {
            newArray += right
        } else {
            newArray += left
        }
        
        return newArray
    }
}
