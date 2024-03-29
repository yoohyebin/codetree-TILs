let nb = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,b) = (nb[0], nb[1])
var arr = [(p: Int, s: Int)]()
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

arr.sort(by: { $0.p+$0.s < $1.p+$1.s })

for i in 0..<n {
    var sum = (arr[i].p/2) + arr[i].s
    var cnt = 1
    
    for j in 0..<n {
        if i == j {continue}
        
        sum += arr[j].p + arr[j].s
        
        if sum > b {
            break
        }
        
        cnt += 1
    }
    
    result = max(result, cnt)
}

print(result)