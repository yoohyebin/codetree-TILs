let target = readLine()!
let s = readLine()!

func solution() -> Int{
    if !target.contains(s) {
        return -1
    }
    
    for i in 0...(target.count-s.count) {
        if String(Array(target)[i..<i+s.count]) == s {
            return i
        }
    }
    return -1
}

print(solution())