class Queue {
    var data: [Node] = []
    
    func enqueue(node: Node) {
        data.append(node)
    }
    
    func dequeue() -> Node? {
        if data.count > 0 {
            return data.removeFirst()
        }
        return nil
    }
}
