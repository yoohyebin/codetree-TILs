let xy = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = 0

for n in xy[0]...xy[1] {
    if String(n) == String(String(n).reversed()) {
        result += 1
    }
}

print(result)