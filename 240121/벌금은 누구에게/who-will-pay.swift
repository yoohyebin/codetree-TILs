let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,k) = (input[0], input[1], input[2])
var arr = Array(repeating: 0, count: n+1)
var result = -1

for _ in 0..<m {
    let s = Int(readLine()!)!
    arr[s] += 1
    
    if result == -1, arr[s] == k {
        result = s
    }
}

print(result)