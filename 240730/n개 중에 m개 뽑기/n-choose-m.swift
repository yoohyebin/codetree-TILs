let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (input[0], input[1])
var nums = [Int]()
var result = [String]()

func solution(_ curr_num: Int, _ cnt: Int) {
    if curr_num > n {
        if cnt == m {
            result.append(nums.map{String($0)}.joined(separator: " "))
        }
        return
    }
    
    nums.append(curr_num)
    solution(curr_num+1, cnt+1)
    nums.removeLast()
    
    solution(curr_num+1, cnt)
}

solution(1, 0)

for r in result {
    print(r)
}