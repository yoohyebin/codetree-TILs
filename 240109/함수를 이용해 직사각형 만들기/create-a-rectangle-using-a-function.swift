let nm = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in 0..<nm[0] {
    print(String(repeating: "1", count: nm[1]))
}