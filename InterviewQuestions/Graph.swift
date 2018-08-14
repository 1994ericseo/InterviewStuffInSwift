//
//  Graph.swift
//  InterviewQuestions
//
//  Created by Eric Seo on 7/30/18.
//  Copyright © 2018 Eric Seo. All rights reserved.
//

class Graph {
    let head: Node
    
    init(head: Node) {
        self.head = head
    }
    
    func depthFirstSearch(value: Int) -> Node? {
        var discovered: [Node] = []
        let stack = Stack()
        stack.push(node: head)
        while !stack.data.isEmpty {
            if let node = stack.pop() {
                if node.value == value {
                    return node
                }
                if !discovered.contains(where: { $0 === node}) {
                    discovered.append(node)
                }
                for child in node.children {
                    if !discovered.contains(where: { $0 === child}) {
                        stack.push(node: child)
                        discovered.append(child)
                    }
                }
            }
        }
        return nil
    }
    
    func breadthFirstSearch(value: Int) -> Node? {
        var discovered: [Node] = []
        let queue = Queue()
        queue.enqueue(node: head)
        while !queue.data.isEmpty {
            if let node = queue.dequeue() {
                if node.value == value {
                    return node
                }
                if !discovered.contains(where: { $0 === node }) {
                    discovered.append(node)
                }
                for child in node.children {
                    if !discovered.contains(where: { $0 === child }) {
                        queue.enqueue(node: child)
                        discovered.append(child)
                    }
                }
                
            }
        }
        return nil
    }
}

class Node {
    var value: Int
    var children: [Node] = []
    
    init(value: Int) {
        self.value = value
    }
    
    func addChild(node: Node) {
        children.append(node)
    }
}
