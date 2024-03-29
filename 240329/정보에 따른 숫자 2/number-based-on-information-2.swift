let tab = readLine()!.split(separator: " ").map{Int(String($0))!}
let (t,a,b) = (tab[0], tab[1], tab[2])
var arr = [(c: String, x: Int)]()
var result = 0

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{String($0)}
    arr.append((input[0], Int(input[1])!))
}

for i in a...b {
    var d1 = Int.max, d2 = Int.max
    
    for (c,x) in arr {
        if c == "S" {
            d1 = min(d1, abs(x-i))
        } else {
            d2 = min(d2, abs(x-i))
        }
    }
    
    if d1 <= d2 {
        result += 1
    }
}


print(result)