let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
let arrA = readLine()!.split(separator: " ").map{Int(String($0))!}
let arrB = readLine()!.split(separator: " ").map{Int(String($0))!}

var result = 0

for i in 0...n-m {
    if arrA[i..<i+m].sorted() == arrB.sorted() {
        result += 1
    }
}

print(result)