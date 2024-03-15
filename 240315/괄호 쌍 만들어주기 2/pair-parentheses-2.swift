let s = readLine()!.map{String($0)}
let n = s.count
var result = 0

for i in 0..<n-3 {
    if s[i] == "(" && s[i+1] == "(" {
        for j in i+2..<n-1 {
            if s[j] == ")" && s[j+1] == ")" {
                result += 1
            }
        }
    }
}

print(result)