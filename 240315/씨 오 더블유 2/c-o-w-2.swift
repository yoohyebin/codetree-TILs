let n = Int(readLine()!)!
let arr = readLine()!.map{String($0)}
var result = 0

for i in 0..<arr.count-2 {
    if arr[i] == "C" {
        for j in i+1..<arr.count-1 {
            if arr[j] == "O" {
                for k in j+1..<arr.count {
                    if arr[k] == "W" {
                        result += 1
                    }
                }
            }
        }
    }
}

print(result)