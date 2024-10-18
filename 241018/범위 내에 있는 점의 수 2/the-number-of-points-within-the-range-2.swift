let nq = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,q) = (nq[0], nq[1])
var pin = Array(repeating: 0, count: 1000001)
var sumArray = Array(repeating: 0, count: 1000001)
var results = [String]()

for i in readLine()!.split(separator: " ").map({Int(String($0))!}) {
    sumArray[i] += 1
}

for i in 1...1000000 {
    sumArray[i] += sumArray[i-1]
}

for _ in 0..<q {
    let rage = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    results.append("\(sumArray[rage[1]] - sumArray[rage[0]-1])")
}

print(results.joined(separator: "\n"))