let num_of_days = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let days = ["Mon": 0, "Tue": 1, "Wed": 2, "Thu": 3, "Fri": 4, "Sat": 5, "Sun": 6]
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (m1,d1,m2,d2) = (input[0], input[1], input[2], input[3])
let day = readLine()!
var totalDay = 0

for i in m1..<m2 {
    totalDay += num_of_days[i]
}

totalDay += (d2-d1)

var result = totalDay/7
result += (days[day] ?? 0) <= totalDay%7 ? 1 : 0
print(day == "Mon" ? result-1 : result)