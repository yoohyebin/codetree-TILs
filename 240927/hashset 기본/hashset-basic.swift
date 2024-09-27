let n = Int(readLine()!)!
var set = Set<Int>()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    let x = Int(input[1]) ?? 0
    
    if input[0] == "add" {
        set.insert(x)
    } else if input[0] == "remove" {
        set.remove(x)
    } else {
        print(set.contains(x) ? "true" : "false")
    }
}