class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        var tickets = tickets
        var time = 0
        while tickets[k] != 0 {
            for i in 0..<tickets.count {
                if tickets[i] > 0 {
                    time += 1
                    tickets[i] -= 1
                    if tickets[i] == 0 && i == k {
                        return time
                    }
                }
            }
        }
        return time
    }
}