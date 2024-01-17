let num_of_days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (m1,d1,m2,d2) = (input[0], input[1], input[2], input[3])
var day = 0

if m1 <= m2 {
    for i in m1..<m2 {
        day += num_of_days[i]
    }
    day += (d2-d1)
} else {
    for i in m2..<m1 {
        day += num_of_days[i]
    }
    day += (d1-d2)
}

if day < 0 {
    day += 7
}
print(days[day%7])