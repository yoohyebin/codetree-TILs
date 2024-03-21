let nmd = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,d,s) = (nmd[0], nmd[1], nmd[2], nmd[3])
var people = [(p: Int,m: Int, t: Int)]()
var sick = [(p: Int, t: Int)]()
var result = 0

for _ in 0..<d {
    let pmt = readLine()!.split(separator: " ").map{Int(String($0))!}
    people.append((pmt[0], pmt[1], pmt[2]))
}

for _ in 0..<s {
    let pt = readLine()!.split(separator: " ").map{Int(String($0))!}
    sick.append((pt[0], pt[1]))
}

for i in 1...m {
    var time = Array(repeating: Int.max, count: n+1)
    
    for person in people {
        if person.m != i {
            continue
        }
        
        time[person.p] = min(time[person.p], person.t)
    }
    
    var flag = true
    
    for s in sick {
        if time[s.p] == Int.max {
            flag = false
        }
    }
    
    if flag {
        result = max(result, time.filter{$0 != Int.max}.count)
    }
}

print(result)