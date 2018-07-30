class SinglyLinkedList {
    var value: Int
    var next: SinglyLinkedList?
    
    init(value: Int, next: SinglyLinkedList?) {
        self.value = value
        self.next = next
    }
    
    func gimmeMiddle() -> Int? {
        var goUp = false
        var middle: SinglyLinkedList? = self
        var node: SinglyLinkedList? = self
        while node != nil {
            if goUp {
                middle = middle?.next
                goUp = false
            } else {
                goUp = true
            }
            node = node?.next
        }
        return middle?.value
    }
    
    static func createLinkedListWithIntArray(array: [Int]) -> SinglyLinkedList? {
        if array.count == 0 {
            return nil
        }
        var count = 1
        let head = SinglyLinkedList(value: array[0], next: nil)
        var curr = head
        while count < array.count {
            curr.next = SinglyLinkedList(value: array[count], next: nil)
            curr = curr.next!
            count += 1
        }
        return head
    }
    
    static func createArrayWithLinkedList(singlyLinkedList: SinglyLinkedList?) -> [Int] {
        var array: [Int] = []
        var currNode: SinglyLinkedList? = singlyLinkedList
        while currNode != nil {
            array.append(currNode!.value)
            currNode = currNode?.next
        }
        return array
    }
    
    func getLastValue() -> Int? {
        var currNode: SinglyLinkedList? = self
        while currNode?.next != nil {
            currNode = currNode?.next
        }
        return currNode?.value
    }
    
    func reverseLinkedList() -> SinglyLinkedList? {
        var list: [Int] = []
        var curr: SinglyLinkedList? = self
        while curr != nil {
            list.insert(curr!.value, at: 0)
            curr = curr!.next
        }
        return SinglyLinkedList.createLinkedListWithIntArray(array: list)
    }
}
