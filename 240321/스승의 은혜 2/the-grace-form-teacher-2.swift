let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,b) = (input[0], input[1])
var arr = [Int]()
var result = 0

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

for i in 0..<n {
    var sum = b - (arr[i]/2)
    var cnt = 0
    
    if sum >= 0 {
        cnt += 1
    } else {
        continue
    }
    
    for j in 0..<n {
        if i == j {
            continue
        }
        
        if sum - arr[j] >= 0 {
            sum -= arr[j]
            cnt += 1
        } else {
            break
        }
    }
    
    result = max(result, cnt)
}

print(result)