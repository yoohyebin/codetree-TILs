let num_of_days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let days = ["Sat", "Sun", "Mon", "Tue", "Wed", "Thu", "Fri"]
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (m1,d1,m2,d2) = (input[0], input[1], input[2], input[3])
var day = 0

if m1 < m2 {
    for i in m1..<m2 {
        day += num_of_days[i]
    }
} else if m1 > m2 {
    for i in m2..<m1 {
        day += num_of_days[i]
    }
}

day += abs(d2-d1)
print(days[day%7])