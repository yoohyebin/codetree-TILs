let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,t) = (input[0], input[1])
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

if arr.filter{$0>t}.count == 0 {
    print(0)
} else {
    var cnt = 0, result = 0
    for i in 0..<n {
        if arr[i] > t {
            cnt += 1
        } else {
            result = max(result, cnt)
            cnt = 0
        }
    }
    print(max(result, cnt) )
}