let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}


while true {
    var bombCnt = 1, cnt = 1
    var prev = arr[0], firstIndex = 0
    
    for i in 1..<arr.count {
        if prev == arr[i] {
            bombCnt += 1
        } else {
            if bombCnt >= m {
                for j in firstIndex..<i {
                    arr[j] = 0
                }
            }
            
            bombCnt = 1
            prev = arr[i]
            firstIndex = i
        }
        cnt += 1
    }
    
    if bombCnt >= m {
        arr.removeSubrange(firstIndex..<arr.count)
    }
    
    arr = arr.filter{$0 != 0}
    
    if arr.count == cnt || arr.isEmpty {
        break
    }
}

print(arr.count)
for a in arr {
    print(a)
}