let n = Int(readLine()!)!
var arr = readLine()!.map{String($0)}
var result = 0

for i in 0..<n-1{
    for j in 1...n-i {
        if arr[i+j..<n].contains(arr[i..<i+j]) {
            result = max(result, j+1)
        }
    }
}

print(result)