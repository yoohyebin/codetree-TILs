let n = Int(readLine()!)!
var arrA = readLine()!.split(separator: " ").map{Int(String($0))!}
var arrB = readLine()!.split(separator: " ").map{Int(String($0))!}
var arrC = readLine()!.split(separator: " ").map{Int(String($0))!}
var arrD = readLine()!.split(separator: " ").map{Int(String($0))!}
var dictA = [Int: Int]()
var dictB = [Int: Int]()
var dictC = [Int: Int]()
var dictD = [Int: Int]()
var result = 0

for i in 0..<n {
    dictA[arrA[i], default: 0] += 1
    dictB[arrB[i], default: 0] += 1
    dictC[arrC[i], default: 0] += 1
    dictD[arrD[i], default: 0] += 1
}


for i in 0..<n {
    dictA[arrA[i], default: 1] -= 1
    for j in 0..<n {
        dictB[arrB[i], default: 1] -= 1
        for k in 0..<n {
            let diff = 0 - (arrA[i] + arrB[j] + arrC[k])
            
            if let val = dictD[diff] {
                result += val
            }
        }
    }
}


print(result)