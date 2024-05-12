let n = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0] {
    case "push":
        stack.append(Int(input[1]) ?? 0)
    case "pop":
        print(stack.removeLast())
    case "size":
        print(stack.count)
    case "empty":
        print(stack.isEmpty ? 1 : 0)
    case "top":
        print(stack.last ?? 0)
    default:
        break
    }
}