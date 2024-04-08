let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (a,b,c) = (input[0], input[1], input[2])
var result = 0

for i in 0..<c {
    var sum = a*i
    
    if sum > c {break}
    
    for j in 0..<c {
        if sum+b > c {break}
        sum += b
    }
    
    result = max(result, sum)
}

print(result)