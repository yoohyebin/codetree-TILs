let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, k) = (nk[0], nk[1])
var result = 0
var dict = [Int: Int]()
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in arr {
    let diff = k-i

    if let val = dict[diff] {
        result += val
    }

    dict[i, default: 0] += 1
}

print(result)