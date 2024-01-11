let n = Int(readLine()!)!
var arr = [(index: Int, distance: Int)]()

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    arr.append((i+1, abs(input[0])+abs(input[1])))
}
arr.sort {
    $0.distance == $1.distance ? $0.index < $1.index : $0.distance < $1.distance
}

for a in arr {
    print(a.index)
}