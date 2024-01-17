let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (a,b) = (input[0], input[1])
let n = readLine()!.map{Int(String($0))!}
var decimalNumber = 0, squareNumber = 1

for i in n.reversed() {
    decimalNumber += squareNumber*i
    squareNumber *= a
}

var result = ""
while decimalNumber > 0 {
    result += "\(decimalNumber%b)"
    decimalNumber /= b
}

print(String(result.reversed()))