let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let k = input[1]
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()

print(arr[k-1])