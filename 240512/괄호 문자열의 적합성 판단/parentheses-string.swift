let sValue = readLine()!.map{String($0)}
var stack = [String]()

for s in sValue {
    if s == "(" {
        stack.append("(")
    } else {
        if !stack.isEmpty {
            stack.removeLast()
        }
    }
}

print(stack.isEmpty ? "Yes" : "No")