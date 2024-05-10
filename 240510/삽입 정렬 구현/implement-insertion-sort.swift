let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in 1..<n {
    var j = i-1
    let key = arr[i]
    
    while j >= 0, arr[j] > key {
        arr[j+1] = arr[j]
        j -= 1
    }
    
    arr[j+1] = key
}


print(arr.map{String($0)}.joined(separator: " "))