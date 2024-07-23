let input = readLine()!.map{String($0)}
var alphabet = [String]()
var alphabetNum = [String: Int]()
var result = 0

for i in 0..<input.count {
    if i%2 == 0, !alphabet.contains(input[i]){
        alphabet.append(input[i])
    }
}

func cal() -> Int {
    var sum = alphabetNum[input[0]] ?? 0
    
    for idx in stride(from: 1, to: input.count, by: 2) {
        let num = alphabetNum[input[idx+1]] ?? 0
        
        switch input[idx] {
        case "+":
            sum += num
        case "-":
            sum -= num
        case "*":
            sum *= num
        default:
            break
        }
    }
    
    return sum
}

func solution(_ cnt: Int, _ num: Int) {
    if cnt == alphabet.count {
        result = max(result, cal())
        return
    }
    
    alphabetNum[alphabet[cnt]] = num
    
    for i in 1...4 {
        solution(cnt+1, i)
    }
}

for i in 1...4 {
    solution(0, i)
}

print(result)