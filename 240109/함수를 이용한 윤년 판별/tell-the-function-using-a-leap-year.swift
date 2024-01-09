func solution(_ year: Int) -> Bool {
    return (year%4 == 0 && year%100 != 0) || year%400 == 0 ? true : false
}

print(solution(Int(readLine()!)!))