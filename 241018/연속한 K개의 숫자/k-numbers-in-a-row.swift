let nkb = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k,b) = (nkb[0], nkb[1], nkb[2])
var arrB = Array(repeating: 0, count: n+1)
var sumArray = Array(repeating: 0, count: n+1)
var reuslt = Int.max

for _ in 0..<b {
    arrB[Int(readLine()!)!] += 1
}

for i in 1...n {
    sumArray[i] = sumArray[i-1] + arrB[i]
}

for i in 1...n-k+1 {
    reuslt = min(reuslt, sumArray[i+k-1] - sumArray[i])
}

print(reuslt)