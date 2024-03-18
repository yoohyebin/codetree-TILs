let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = n

for i in 1..<n {
    for j in 0..<n-i {
        let sum =  arr[j...j+i].reduce(0, +)
        if sum%(i+1) == 0 {
            let avg = sum/(i+1)
            result += arr[j...j+i].contains(avg) ? 1 : 0
        }
    }
}

print(result)