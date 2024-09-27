let n = Int(readLine()!)!
var arrA = readLine()!.split(separator: " ").map{Int(String($0))!}
var arrB = readLine()!.split(separator: " ").map{Int(String($0))!}
var arrC = readLine()!.split(separator: " ").map{Int(String($0))!}
var arrD = readLine()!.split(separator: " ").map{Int(String($0))!}

var dict = [Int: Int]()

var result = 0

for i in 0..<n {
    for j in 0..<n {
        dict[arrA[i] + arrB[j], default: 0] += 1
    }
}

for i in 0..<n {
    for j in 0..<n {
        let diff = -arrC[i] - arrD[j]
        
        if let val = dict[diff] {
            result += val
        }
    }
}

print(result)