let n = Int(readLine()!)!
var deque = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0] {
    case "push_front":
        deque.insert(Int(input[1])!, at: 0)
    case "push_back":
        deque.append(Int(input[1])!)
    case "pop_front":
        print(deque.removeFirst())
    case "pop_back":
        print(deque.removeLast())
    case "size":
        print(deque.count)
    case "empty":
        print(deque.isEmpty ? 1 : 0)
    case "front":
        print(deque.first ?? 0)
    case "back":
        print(deque.last ?? 0)
    default:
        break
    }
}