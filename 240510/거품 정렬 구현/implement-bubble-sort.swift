let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in 0..<n-1 {
    for j in 0..<n-1 {
        if arr[j] > arr[j+1] {
            let temp = arr[j]
            arr[j] = arr[j+1]
            arr[j+1] = temp
        }
    }
}


print(arr.map{String($0)}.joined(separator: " "))