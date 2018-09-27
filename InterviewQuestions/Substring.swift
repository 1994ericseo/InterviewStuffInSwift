import Foundation

class Substring {
    func largestSubstringNoDuplicates(string: String) -> String {
        var curr = ""
        var largestString = ""
        var charVisited: [Character: Int] = [:]
        for i in 0..<string.count {
            for j in i..<string.count {
                let currChar = string[String.Index.init(encodedOffset: j)]
                if charVisited[currChar] != nil {
                    if curr.count > largestString.count {
                        largestString = curr
                    }
                    curr = ""
                    charVisited = [:]
                    break
                } else {
                    charVisited[currChar] = 0
                    curr.append(currChar)
                }
                
            }
        }
        return largestString
    }
}
