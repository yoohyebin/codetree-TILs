func isPrime(_ n: Int) -> Bool {
    if n < 2 {return false}

    var i = 2 
    while i*i <= n {
        if n%i == 0 {
            return false
        }
        i += 1
    }

    return true
}

func checkNumber(_ n: Int) -> Bool {
    return String(n).map{Int(String($0))!}.reduce(0,+) % 2 == 0 
}

func solution(_ a: Int, _ b: Int) -> Int {
    var result = 0

    for i in a...b {
        if isPrime(i) && checkNumber(i) {
            result += 1
        }
    }

    return result
}
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
print(solution(input[0], input[1]))