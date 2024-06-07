let nt = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,t) = (nt[0], nt[1])
var first = readLine()!.split(separator: " ").map{String($0)}.joined()
var second = readLine()!.split(separator: " ").map{String($0)}.joined()

for _ in 0..<t {
    var temp1 = String(first.removeLast())
    var temp2 = String(second.removeLast())
    
    first = temp2 + first
    second = temp1 + second
}

print(first.split(separator: "").joined(separator: " "))
print(second.split(separator: "").joined(separator: " "))