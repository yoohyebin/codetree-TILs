let sValue = readLine()!.map{String($0)}
var cnt = 0

for s in sValue {
    if s == "(" {
        cnt += 1
    } else {
        cnt -= 1
    }
}

print(cnt == 0 ? "Yes" : "No")