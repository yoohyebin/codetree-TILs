let _ = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

print(arr.sorted().map{String($0)}.joined(separator: " "))
print(arr.sorted(by: >).map{String($0)}.joined(separator: " "))