let input = readLine()!.split(separator: " ").map{String($0)}
let (n, k, t) = (Int(input[0])!, Int(input[1])!, input[2])
var arr = [String]()

for i in 0..<n {
    let s = readLine()!
    if s.starts(with: t) {
        arr.append(s)
    }
}

arr.sort()
print(arr[k-1])