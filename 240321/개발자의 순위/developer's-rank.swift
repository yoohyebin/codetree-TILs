let kn = readLine()!.split(separator: " ").map{Int(String($0))!}
let (k,n) = (kn[0], kn[1])
var arr = [[Int]]()
var result = 0

for _ in 0..<k {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 1...n {
    for j in 1...n {
        if i == j {continue}
        
        var flag = true
        for a in arr {
            if (a.firstIndex(of: i) ?? 0 ) < (a.firstIndex(of: j) ?? 0) {
                flag = false
                break
            }
        }
        
        if flag {
            result += 1
        }
    }
}

print(result)