let xy = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0

for n in xy[0]...xy[1] {
    var flag = true
    var number = String(n).map{Int(String($0))!}
    
    for j in 0..<number.count/2{
        if number[j] != number[number.count-j-1] {
            flag = false
            break
        }
    }
        
    result += flag ? 1 : 0
}

print(result)