let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0], input[1])
var arrA = [Int](), arrB = [Int]()

var current = 0
for _ in 0..<n {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (v,t) = (data[0], data[1])
    for _ in 0..<t {
        current += v
        arrA.append(current)
    }
}

current = 0
for _ in 0..<m {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (v,t) = (data[0], data[1])
    for _ in 0..<t {
        current += v
        arrB.append(current)
    }
}

var flag = arrA[0] == arrB[0] ? 0 : (arrA[0] > arrB[0] ? 1 : 2)
var result = 1
for i in 1..<arrA.count {
    let temp = arrA[i] == arrB[i] ? 0 : (arrA[i] > arrB[i] ? 1 : 2)
    if flag != temp {
        result += 1
    }
    flag = arrA[i] == arrB[i] ? 0 : (arrA[i] > arrB[i] ? 1 : 2)
}

print(result)