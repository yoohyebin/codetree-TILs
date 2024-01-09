func isPrime(_ n: Int) -> Bool {
    if n < 2 {return false}

    var i = 2

    while i*i <= n {
        if n%i == 0 {return false}
        i += 1
    }

    return true
}

func solution(_ a: Int, _ b: Int) -> Int {
    var result = 0

    for i in a...b {
        if isPrime(i) {
            result += i
        }
    }

    return result
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
print(solution(input[0], input[1]))