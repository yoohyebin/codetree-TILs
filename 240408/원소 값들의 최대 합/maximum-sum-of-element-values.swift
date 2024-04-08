let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0], input[1])
let arr = [0]+readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0

for i in 1...n {
    var sum = arr[i]
    var current = arr[i]
    
    for _ in 0..<m-1 {
        sum += arr[current]
        current = arr[current]
    }
    
    result = max(result, sum)
}

print(result)