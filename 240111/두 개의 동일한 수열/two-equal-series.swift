let _ = Int(readLine()!)!
let arrA = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
let arrB = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()

print(arrA == arrB ? "Yes" : "No")