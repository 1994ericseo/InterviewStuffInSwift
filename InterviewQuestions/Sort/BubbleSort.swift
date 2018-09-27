class BubbleSort {
    func sort(arr: inout [Int]) {
        for _ in 0..<arr.count {
            for i in 0..<arr.count {
                if i+1 > arr.count-1 {
                    break
                }
                if arr[i] > arr[i+1] {
                    arr.swapAt(i, i+1)
                }
            }
        }
    }
}
