let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0

for i in input[0]...input[1] {
    var arr = Array(repeating: 0, count: 10)
    
    let number = String(i).map{Int(String($0))!}
    
    for n in number {
        arr[n] += 1
    }
    
    if arr.max() ?? 0 == number.count-1 {
        result += 1
    }
}

print(result)