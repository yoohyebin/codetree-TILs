let sValue = readLine()!.map{String($0)}
var stack = [String]()
var flag = true

for s in sValue {
    if s == "(" {
        stack.append("(")
    } else {
        if stack.isEmpty {
            flag = false
            break
        }
        stack.removeLast()
    }
}

print(flag && stack.isEmpty ? "Yes" : "No")