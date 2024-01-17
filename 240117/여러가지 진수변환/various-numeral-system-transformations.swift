let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var (n,b) = (input[0], input[1])
var result = ""

while n > 0 {
    result += "\(n%b)"
    n /= b
}

print(String(result.reversed()))