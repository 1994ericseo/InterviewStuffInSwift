class InsertionSort {
    static func sort(array: inout [Int]) {
        for i in 0..<array.count {
            for j in (0..<i+1).reversed() {
                let left = j-1
                if left < 0 {
                    break
                } else {
                    if array[j] < array[left] {
                        array.swapAt(j, left)
                    } else {
                        break
                    }
                }
            }
        }
    }
}
