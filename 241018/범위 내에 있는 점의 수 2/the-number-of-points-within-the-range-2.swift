let nq = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,q) = (nq[0], nq[1])
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var pin = Array(repeating: 0, count: 1000001)
var sumArray = Array(repeating: 0, count: 1000001)

for a in arr {
    pin[a] = 1
}

for i in 1..<1000001 {
    sumArray[i] = sumArray[i-1] + pin[i]
}

for _ in 0..<q {
    let rage = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    print(sumArray[rage[1]] - sumArray[rage[0]-1])
}