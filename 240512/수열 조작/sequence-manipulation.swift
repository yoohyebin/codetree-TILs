let n = Int(readLine()!)!
var deque = Array(1...n)

while deque.count != 1 {
    deque.removeFirst()
    deque.append(deque.removeFirst())
}

print(deque.first ?? 0)