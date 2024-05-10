let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in 0..<n-1 {
    var min = i
    for j in i+1..<n {
        if arr[j] < arr[min] {
            min = j
        }
    }
    
    let temp = arr[i]
    arr[i] = arr[min]
    arr[min] = temp
}


print(arr.map{String($0)}.joined(separator: " "))