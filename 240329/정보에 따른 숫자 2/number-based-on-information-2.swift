let tab = readLine()!.split(separator: " ").map{Int(String($0))!}
let (t,a,b) = (tab[0], tab[1], tab[2])
var arr = [(c: String, x: Int)]()
var result = 0

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{String($0)}
    arr.append((input[0], Int(input[1])!))
}

for i in a...b {
    let temp = arr.sorted(by: {abs($0.x - i) < abs($1.x-i) })
    
    let d1 = temp.firstIndex(where: {$0.c == "S"}) ?? 0
    let d2 = temp.firstIndex(where: {$0.c == "N"}) ?? 0
    
    if d1 <= d2 {
        result += 1
    }
}


print(result)