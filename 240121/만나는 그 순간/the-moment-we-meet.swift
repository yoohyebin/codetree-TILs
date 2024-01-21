let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0], input[1])
var arrA = [Int]()
var arrB = [Int]()
var current = 0

for _ in 0..<n {
    let data = readLine()!.split(separator: " ").map{String($0)}
    let (d,t) = (data[0], Int(data[1])!)
    
    if d == "R" {
        for i in current..<current+t {
            arrA.append(i)
        }
        current += t
    } else {
        for i in stride(from: current, to: current-t, by: -1) {
            arrA.append(i)
        }
        current -= t
    }
}

current = 0
for _ in 0..<m {
    let data = readLine()!.split(separator: " ").map{String($0)}
    let (d,t) = (data[0], Int(data[1])!)
    
    if d == "R" {
        for i in current..<current+t {
            arrB.append(i)
        }
        current += t
    } else {
        for i in stride(from: current, to: current-t, by: -1) {
            arrB.append(i)
        }
        current -= t
    }
}

var time = -1
for i in 1..<arrA.count {
    if arrA[i] == arrB[i] {
        time = i
        break
    }
}

print(time)