let num_of_days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var (m1,d1,m2,d2) = (input[0], input[1], input[2], input[3])
var result = 0

for i in m1..<m2 {
    result += num_of_days[i]
}

print(result + d2 - d1 + 1)