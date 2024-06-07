let nt = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,t) = (nt[0], nt[1])
var first = readLine()!.split(separator: " ").map{Int(String($0))!}
var second = readLine()!.split(separator: " ").map{Int(String($0))!}
var third = readLine()!.split(separator: " ").map{Int(String($0))!}

for _ in 0..<t {
    var temp1 = first[n-1]
    var temp2 = second[n-1]
    var temp3 = third[n-1]
    
    first = [temp3] + first[0...n-2]
    second = [temp1] + second[0...n-2]
    third = [temp2] + third[0...n-2]
}

print(first.map{String($0)}.joined(separator: " "))
print(second.map{String($0)}.joined(separator: " "))
print(third.map{String($0)}.joined(separator: " "))