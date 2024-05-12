let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (nk[0], nk[1])
var arr = Array(1...n)
var idx = 0

while !arr.isEmpty {
    idx = (idx+k-1)%arr.count
    print(arr.remove(at: idx), terminator: " ")
}