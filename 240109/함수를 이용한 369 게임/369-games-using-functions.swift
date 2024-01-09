func checkNumber(_ n: Int) -> Bool {
    return String(n).contains("3") || String(n).contains("6") || String(n).contains("9")
} 

func solution(_ a: Int, _ b: Int) -> Int {
    var result = 0

    for i in a...b {
        if i%3 == 0 || checkNumber(i) {
            result += 1
        }
    }

    return result
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
print(solution(input[0],input[1]))