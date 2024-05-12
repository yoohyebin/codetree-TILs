let n = Int(readLine()!)!
var queue = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0] {
    case "push":
        queue.append(Int(input[1])!)
    case "pop":
        print(queue.removeFirst())
    case "size":
        print(queue.count)
    case "empty":
        print(queue.isEmpty ? 1 : 0)
    case "front":
        print(queue.first ?? 0)
    default:
        break
    }
}