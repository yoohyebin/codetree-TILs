func solution(_ a: [Int], _ b: [Int]) -> String {
    for i in 0..<(a.count-b.count-1) {
        if Array(a[i..<i+b.count]) == b {
            return "Yes"
        }
    }

    return "No"
}

let _ = readLine()!.split(separator: " ").map{Int(String($0))!}
let a = readLine()!.split(separator: " ").map{Int(String($0))!}
let b = readLine()!.split(separator: " ").map{Int(String($0))!}

print(solution(a, b))