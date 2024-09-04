let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var arr = Array(repeating: [Int](), count: n+1)
var visited = Array(repeating: false, count: n+1)
var cnt = 0

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[input[0]].append(input[1])
    arr[input[1]].append(input[0])
}

func solution(_ node: Int) {
    for i in arr[node] {
        if !visited[i] {
            visited[i] = true
            cnt += 1
            solution(i)
        }
    }
}
visited[1] = true
solution(1)
print(cnt)