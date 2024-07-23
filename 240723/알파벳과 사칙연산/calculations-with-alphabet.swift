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
    guard var sum = alphabetNum[input[0]] else {return 0}
    
    for idx in stride(from: 1, to: input.count, by: 2) {
        guard let num = alphabetNum[input[idx+1]] else {return 0}
        
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

func solution(_ cnt: Int) {
    if cnt == alphabet.count {
        result = max(result, cal())
        return
    }
    
    
    for i in 1...4 {
        alphabetNum[alphabet[cnt]] = i
        solution(cnt+1)
        alphabetNum[alphabet[cnt]] = nil
    }
}
                 
solution(0)

print(result)