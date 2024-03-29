let ncgh = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,c,g,h) = (ncgh[0], ncgh[1], ncgh[2], ncgh[3])
var arr = [(ta: Int, tb: Int)]()
var minT = Int.max, maxT = 0
var result = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
    
    minT = min(minT, input[0])
    maxT = max(maxT, input[1])
}

minT -= minT == 0 ? 0 : 1
maxT += 1

for t in minT...maxT {
    var sum = 0
    
    for (ta, tb) in arr {
        if t < ta {
            sum += c
        } else if t >= ta, t <= tb {
            sum += g
        } else {
            sum += h
        }
    }
    result = max(result, sum)
}

print(result)