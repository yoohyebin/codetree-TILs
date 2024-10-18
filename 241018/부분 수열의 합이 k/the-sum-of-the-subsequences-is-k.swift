let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
var arr = [0] + readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0
var sumArr = Array(repeating: 0, count: n+1)

sumArr[0] = 0
for i in 1...n {
    sumArr[i] = sumArr[i-1] + arr[i]
}

for i in 1...n {
    for j in i...n {
        if sumArr[j] - sumArr[i-1] == k {
            result += 1
        }
    }
}

print(result)