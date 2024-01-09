let n = Int(readLine()!)!
var number = 0

for _ in 0..<n {
    for _ in 0..<n {
        print((number%9)+1, terminator: " ")
        number += 1
    }
    print()
}