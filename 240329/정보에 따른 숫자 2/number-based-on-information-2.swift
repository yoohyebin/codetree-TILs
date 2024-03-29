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
    var d1 = 0, d2 = 0
    
    for j in temp {
        if j.c == "S" {
            d1 = j.x
            break
        }
    }
    
    for j in temp {
        if j.c == "N" {
            d2 = j.x
            break
        }
    }
    
    if d1 <= d2 {
        result += 1
    }
}


print(result)