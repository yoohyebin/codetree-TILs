let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (k, n) = (input[0], input[1])
var result = [String]()
var sValue = [Int]()

func solution(_ cnt: Int) {
    if cnt == n {
        result.append(sValue.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in 1...k {
        if cnt>=2, i == sValue[cnt-2], i == sValue[cnt-1] {
            continue
        }
        sValue.append(i)
        solution(cnt+1)
        sValue.removeLast()
    }
}

solution(0)


for re in result {
    print(re)
}