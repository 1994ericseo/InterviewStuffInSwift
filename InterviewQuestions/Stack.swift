class Stack {
    var data: [Node] = []
    
    func pop() -> Node? {
        if data.count > 0 {
            return data.removeLast()
        }
        return nil
    }
    
    func push(node: Node) {
        data.append(node)
    }
}
