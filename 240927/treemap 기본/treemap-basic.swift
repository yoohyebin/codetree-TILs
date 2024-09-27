let n = Int(readLine()!)!
var dict = [Int: Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    if input[0] == "add" {
        let k = Int(input[1]) ?? 0
        let v = Int(input[2]) ?? 0
        
        dict[k] = v
    } else if input[0] == "remove" {
        let k = Int(input[1]) ?? 0
        dict[k] = nil
    } else if input[0] == "find" {
        let k = Int(input[1]) ?? 0
        print(dict[k] ?? "None")
    } else {
        if dict.isEmpty {
            print("None")
        } else {
            let sorted = dict.sorted(by: {$0.key < $1.key}).map{String($0.value)}
            print(sorted.joined(separator: " "))
        }
    }
}