let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var (a,b,c,d) = (input[0], input[1], input[2], input[3])
var min = 0

if d-b < 0 {
    c -= 1
    min = 60 + (d-b)
} else {
    min = d-b
}

min += 60*(c-a)

print(min)