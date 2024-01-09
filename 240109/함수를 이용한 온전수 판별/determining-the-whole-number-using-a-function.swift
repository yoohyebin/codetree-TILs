func checkNumber(_ n: Int) -> Bool {
    return n%2 != 0 && n%10 != 5 && !(n%3 == 0 && n%9 != 0) 
}

func solution(_ a: Int, _ b: Int) -> Int {
    var result = 0

    for i in a...b {
        if checkNumber(i) {
            result += 1
        }
    }

    return result
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
print(solution(input[0], input[1]))