let _ = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0

for i in 0..<arr.count-2 {
    for j in i+1..<arr.count-1 {
        for k in j+1..<arr.count {
            if arr[i] <= arr[j] && arr[j] <= arr[k] {
                result += 1
            }
        }
    }
}

print(result)