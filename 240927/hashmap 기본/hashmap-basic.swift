let n = Int(readLine()!)!
var dict = [Int: Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    let k = Int(input[1]) ?? 0
    
    switch input[0] {
    case "add":
        let v = Int(input[2]) ?? 0
        dict[k] = v
    case "remove":
        dict.removeValue(forKey: k)
    case "find":
        print(dict[k] ?? "None")
    default:
        break
    }
}