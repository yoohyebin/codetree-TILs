var n = Int(readLine()!)!
var result = ""

while n >= 0 {
    result += n%2 == 0 ? "0" : "1"
    n /= 2
}

print(String(result.reversed()))