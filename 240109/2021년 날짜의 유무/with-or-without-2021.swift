func solution(_ m: Int, _ d: Int) -> String {
    switch m {
        case 1,3,5,7,8,10,12:
            return d > 31 ? "No" : "Yes"
        case 4,6,9,11:
            return d > 30 ? "No" : "Yes"
        case 2:
            return d > 28 ? "No" : "Yes"
        default:
            return "No"
    }
}
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
print(solution(input[0], input[1]))