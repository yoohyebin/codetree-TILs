let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
var setA = Set<Int>()
var setB = Set<Int>()

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
for i in arr {
    setA.insert(i)
}

arr = readLine()!.split(separator: " ").map{Int(String($0))!}
for i in arr {
    setB.insert(i)
}

let s1 = setA.subtracting(setB)
let s2 = setB.subtracting(setA)
print(s1.union(s2).count)