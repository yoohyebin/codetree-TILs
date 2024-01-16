let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var (a,b,c) = (input[0], input[1], input[2])
var result = (a-11)*1440 + 60*(b-11) + (c-11)

print(result < 0 ? -1 : result)