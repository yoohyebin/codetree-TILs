let arr = readLine()!.map{String($0)}
var result = 0

for i in 0..<arr.count {
    if arr[i] == "(" {
        for j in i+1..<arr.count {
            if arr[j] == ")" {
                result += 1
            }
        }
    }
}

print(result)