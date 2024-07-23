let input = readLine()!.map{String($0)}
var alphabet = [String]()
var alphabetNum = [String: Int]()
var op = [String]()
var result = 0

for i in 0..<input.count {
    if i%2 == 0 {
        alphabet.append(input[i])
    } else {
        op.append(input[i])
    }
}

func cal() -> Int {
    var sum = alphabetNum[alphabet[0]] ?? 0
    
    for (idx, o) in op.enumerated() {
        let num = alphabetNum[alphabet[idx+1]] ?? 0
        
        switch o {
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