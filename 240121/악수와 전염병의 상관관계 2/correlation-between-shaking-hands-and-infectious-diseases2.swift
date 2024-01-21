let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k,p,t) = (input[0], input[1], input[2], input[3])
var arr = [(t: Int, x: Int, y: Int)]()
var person = Array(repeating: -1, count: n+1)
person[p] = k

for _ in 0..<t {
    let data = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((data[0], data[1], data[2]))
}

for a in arr.sorted{$0.t < $1.t} {
    if person[a.x] > 0, person[a.y] > 0 {
        person[a.x] -= 1
        person[a.y] -= 1
    }else if person[a.x] > 0 {
        person[a.x] -= 1
        person[a.y] = k
    } else if person[a.y] > 0 {
        person[a.y] -= 1
        person[a.x] = k
    }
}

print(person[1...n].map{$0>=0 ? "1" : "0"}.joined())