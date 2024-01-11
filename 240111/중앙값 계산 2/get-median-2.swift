let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in stride(from: 0, to: n, by: 2) {
    print(arr[0...i].sorted()[i/2], terminator: " ")
}