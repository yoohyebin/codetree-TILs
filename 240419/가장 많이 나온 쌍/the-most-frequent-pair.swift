let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0],nm[1])
var dict = [String: Int]()

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
    dict["\(input[0])\(input[1])", default: 0] += 1
}

print(dict.values.max() ?? 0)