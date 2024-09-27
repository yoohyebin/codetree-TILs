let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, k) = (nk[0], nk[1])
var result = 0
var dict = [Int: Int]()
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in arr {
    dict[i, default: 0] += 1
}

for i in arr {
    result += ((dict[abs(i - k)] ?? 0) * (dict[i] ?? 0))
    dict[abs(i - k)] = 0
    dict[i] = 0
}

print(result)