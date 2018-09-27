class QuickSort {
    func quickSort(array: inout [Int], first: Int, last: Int) {
//        if first >= last {
//            return
//        }
//
//        let pivotIndex = last
//        var curr = first
//        for i in first...last {
//            if array[i] < array[pivotIndex] {
//                array.swapAt(curr, i)
//                curr += 1
//            }
//        }
//        array.swapAt(curr, pivotIndex)
//        quickSort(array: &array, first: first, last: curr-1)
//        quickSort(array: &array, first: curr, last: last)
        
        
        if first < last {
            let pivotIndex = last
            var curr = first
            for i in first...last {
                if array[i] < array[pivotIndex] {
                    array.swapAt(i, curr)
                    curr += 1
                }
            }
            array.swapAt(pivotIndex, curr)
            quickSort(array: &array, first: first, last: curr-1)
            quickSort(array: &array, first: curr, last: last)
        }
    }
}
