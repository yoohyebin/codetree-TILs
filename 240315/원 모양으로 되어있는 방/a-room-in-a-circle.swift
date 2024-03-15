let n = Int(readLine()!)!
var arr = [Int]()
var result = Int.max

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

for i in 0..<n {
    var sum = 0
    
    for j in 0..<n {
        let distance = (j-i+n)%n
        sum += distance*arr[j]
    }
    
    result = min(result, sum)
}


print(result)