var sArr = readLine()!.map{String($0)}
var result = Int.max
let n = sArr.count

for _ in 0..<n {
    var rString = ""
    var temp = sArr.removeLast()
    sArr = [temp] + sArr
    
    var c = sArr[0]
    var cnt = 1
    
    for i in 1..<n {
        if c == sArr[i] {
            cnt += 1
        } else {
            rString += "\(c)\(cnt)"
            cnt = 1
            c = sArr[i]
        }
    }
    
    rString += "\(c)\(cnt)"
    
    result = min(result, rString.count)
}

print(result)