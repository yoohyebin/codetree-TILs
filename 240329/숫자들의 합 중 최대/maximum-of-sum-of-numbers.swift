let xy = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0

for i in xy[0]...xy[1] {
    result = max(result, String(i).map{Int(String($0))!}.reduce(0, +))
}

print(result)