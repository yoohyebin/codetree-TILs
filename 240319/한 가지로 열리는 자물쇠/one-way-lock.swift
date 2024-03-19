let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var result = 0

for i in 1...n {
    for j in 1...n {
        for k in 1...n {
            if abs(a-i) <= 2 || abs(b-j) <= 2 || abs(c-k) <= 2 {
                result += 1
            }
        }
    }
}


print(result)