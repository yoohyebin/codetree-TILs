let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (k, n) = (input[0], input[1])
var result = [String]()

func solution(_ num: String) {
    if num.count == n {
        result.append(num.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in 1...k {
        solution(num + "\(i)")
    }
    
}

for i in 1...k {
    solution("\(i)")
}

for r in result {
    print(r)
}