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
    func isValid(_ s: String) -> Bool {
        var myStack = Stack<Character>()

        for char in s {
            if char == "(" || char == "[" || char == "{" {
                myStack.push(char)
            }
            else if char == ")" { 
                if myStack.isEmpty() || myStack.pop() != "(" {
                    return false
                }
            }
            else if char == "]" {
                if myStack.isEmpty() || myStack.pop() != "[" {
                    return false
                }
            }
            else if char == "}" {
                 if myStack.isEmpty() || myStack.pop() != "{" {
                    return false
                }
            }
            
        }
        if myStack.isEmpty() {
            return true
        }
        return false
    }
}