let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var result = 0

for i in 0..<arr.max()! {
    for j in 0..<n-1 {
        for k in j+1..<n {
            if abs(i-arr[j]) == abs(i-arr[k]) {
                result += 1
            }
        }
    }
}

print(result)