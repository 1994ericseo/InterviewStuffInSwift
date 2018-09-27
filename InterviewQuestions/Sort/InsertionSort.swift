class InsertionSort {
    static func sort(array: inout [Int]) {
        for i in 0..<array.count {
            for j in (0...i).reversed() {
                let left = j-1
                if left < 0 || array[j] >= array[left] {
                    break
                }
                array.swapAt(j, left)
            }
        }
    }
}
