let n = Int(readLine()!)!
var arr = [(a: Int, b: Int)]()
var result = 1

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

while true {
    var number = result*2
    var cnt = 0
    
    for (a,b) in arr {
        if number >= a, number <= b {
            cnt += 1
            number *= 2
        } else {
            break
        }
    }
    
    if cnt == n {
        break
    } else {
        result += 1
    }
}

print(result)