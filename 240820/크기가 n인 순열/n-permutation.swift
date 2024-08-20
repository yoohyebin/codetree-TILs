let n = Int(readLine()!)!

func solution(_ depth: Int, _ number: [Int]) {
    if depth == n {
        print(number.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in 1...n {
        if number.contains(i) {
            continue
        }
        
        solution(depth+1, number+[i])
    }
}

for i in 1...n {
    solution(1, [i])
}