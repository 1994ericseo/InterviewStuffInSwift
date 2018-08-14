class BSTNode {
    var value: Int
    var left: BSTNode?
    var right: BSTNode?
    
    init(value: Int = 0, left: BSTNode? = nil , right: BSTNode? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
    
    
    static func createBinarySearchTree(arr: [Int]) -> BSTNode? {
        if arr.count == 0 {
            return nil
        }
        let head = BSTNode()
        for i in arr {
            if head.value == 0 {
                head.value = i
                continue
            }
            var curr: BSTNode? = head
            while curr != nil {
                guard let currentNode = curr else {
                    return nil
                }
                if i < currentNode.value {
                    if currentNode.left == nil {
                        curr!.left = BSTNode(value: i)
                    } else {
                        curr = currentNode.left
                    }
                } else {
                    if curr!.right == nil {
                        curr!.right = BSTNode(value: i)
                    } else {
                        curr = currentNode.right
                    }
                }
            }
        }
        return head
    }
}


