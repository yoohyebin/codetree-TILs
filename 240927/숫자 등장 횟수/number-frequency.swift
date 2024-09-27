let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var dict = [Int: Int]()

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var qArr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in arr {
    dict[i, default: 0] += 1
}

for i in qArr {
    print(dict[i] ?? 0, terminator: " ")
}