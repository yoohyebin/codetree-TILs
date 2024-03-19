let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var result = 0

for i in 1...n {
    for j in 1...n {
        for k in 1...n {
            if abs(arr[0]-i) <= 2 || abs(arr[1]-j) <= 2 || abs(arr[2]-k) <= 2 {
                result += 1
            }
        }
    }
}

print(result)