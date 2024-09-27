let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, k) = (nk[0], nk[1])
var dict = [Int: Int]()
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for e in arr {
    dict[e, default: 0] += 1
}

let keys = dict.sorted(by: {
    $0.value > $1.value
}).map{String($0.key)}


print(keys[0..<k].joined(separator: " "))