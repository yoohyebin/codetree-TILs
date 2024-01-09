func solution(_ year: Int, _ month: Int, _ day: Int) -> String {
    switch month {
        case 1, 3, 5, 7, 8, 10, 12: 
            if day > 31 {
                return "-1"
            }
        case 4, 6, 9, 11: 
            if day > 30 {
                return "-1"
            }
        case 2:
            if (year%4 == 0 && year%100 != 0) || year%400 == 0 {
                if day > 29 {
                    return "-1"
                }
            } else {
                if day > 28 {
                    return "-1"
                }
            }
        default: return "-1"
    }

    switch month {
        case 3,4,5: 
            return "Spring"
        case 6,7,8: 
            return "Summer"
        case 9,10,11: 
            return "Fall"
        case 12,1,2: 
            return "Winter"
        default: return "-1"
    }
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
print(solution(input[0], input[1], input[2]))