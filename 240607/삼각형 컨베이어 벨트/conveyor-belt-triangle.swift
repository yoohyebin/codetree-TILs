let nt = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,t) = (nt[0], nt[1])
var first = readLine()!.split(separator: " ").map{String($0)}.joined()
var second = readLine()!.split(separator: " ").map{String($0)}.joined()
var third = readLine()!.split(separator: " ").map{String($0)}.joined()

for _ in 0..<t {
    var temp1 = String(first.removeLast())
    var temp2 = String(second.removeLast())
    var temp3 = String(third.removeLast())
    
    first = temp3 + first
    second = temp1 + second
    third = temp2 + third
}

print(first.split(separator: "").joined(separator: " "))
print(second.split(separator: "").joined(separator: " "))
print(third.split(separator: "").joined(separator: " "))