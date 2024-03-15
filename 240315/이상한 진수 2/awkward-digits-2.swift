let n = readLine()!.map{String($0)}
var result = 0

for i in 1..<n.count {
    var temp = n
    temp[i] = temp[i] == "1" ? "0" : "1"
    
    result = max(result, Int(temp.joined(), radix: 2)!)
}

print(result)