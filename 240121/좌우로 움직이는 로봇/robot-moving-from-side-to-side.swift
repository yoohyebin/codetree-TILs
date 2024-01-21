let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0], input[1])
var arrA = [Int](), arrB = [Int]()

var current = 0
for i in 0..<n {
    let data = readLine()!.split(separator: " ").map{String($0)}
    let (t,d) = (Int(data[0])!, data[1])
    
    for i in 0..<t {
        current += (d=="R" ? 1 : -1)
        arrA.append(current)
    }
}

current = 0
for i in 0..<m {
    let data = readLine()!.split(separator: " ").map{String($0)}
    let (t,d) = (Int(data[0])!, data[1])
    
    for i in 0..<t {
        current += (d=="R" ? 1 : -1)
        arrB.append(current)
    }
}

if arrA.count < arrB.count {
    for _ in 0..<arrB.count-arrA.count {
        arrA.append(arrA.last ?? 0)
    }
} else if arrA.count > arrB.count {
    for _ in 0..<arrA.count-arrB.count {
        arrB.append(arrB.last ?? 0)
    }
}

var flag = arrA[0] != arrB[0]
var result = 0

for i in 1..<arrA.count {
    if flag && arrA[i] == arrB[i] {
        result += 1
    }
    
    flag = arrA[i] != arrB[i]
}

print(result)