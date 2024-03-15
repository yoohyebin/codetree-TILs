let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0

for i in 0..<n-2 {
    for j in 2..<n-i {
        result = max(result, arr[i]+arr[i+j])
    }
}

print(result)