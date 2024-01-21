let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0], input[1])
var arrA = [Int](), arrB = [Int]()

var current = 0
for _ in 0..<n {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (v,t) = (data[0], data[1])
    
    for i in 0..<t{
        current += v
        arrA.append(current)
    }
}

current = 0
for _ in 0..<m {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (v,t) = (data[0], data[1])
    
    for i in 0..<t{
        current += v
        arrB.append(current)
    }
}

var prev = arrA[0] > arrB[0]
var result = 0

for i in 1..<arrA.count {
    if prev != (arrA[i] > arrB[i]) {
        result += 1
        prev = arrA[i] > arrB[i]
    }
}

print(result)