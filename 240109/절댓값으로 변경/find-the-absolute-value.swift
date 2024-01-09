func solution(_ n: Int, _ arr: inout [Int]) {
    for i in 0..<n {
        if arr[i] < 0 {
            arr[i] *= -1
        }
    }
}

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
solution(n, &arr) 

print(arr.map{String($0)}.joined(separator: " "))