private struct Stack<Character> {
    private var items: [Character] = []
    public init() {}
    public mutating func push(_ item: Character) {
        items.append(item)
    } 
    public mutating func pop() -> Character? {
        //if self.items.count = 0 { return nil }
        return items.popLast()
    }
    public func isEmpty() -> Bool{
        items.count == 0 ? true: false
    }
}
class Solution {
    let pair: [Character:Character] = ["(":")", "[":"]", "{":"}"]
    func isValid(_ s: String) -> Bool {
        var myStack = Stack<Character>()

        for char in s {
            if pair.keys.contains(char) {
                myStack.push(char)
            }
            if pair.values.contains(char) { 
                if myStack.isEmpty() {
                    return false
                }
                if let last = myStack.pop() {
                    if pair[last] != char {
                        return false
                    }   
                }
            }
        }
        if myStack.isEmpty() {
            return true
        }
        return false
    }
}