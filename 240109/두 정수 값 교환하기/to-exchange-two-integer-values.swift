func swapFunc(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var (a, b) = (input[0], input[1])
swapFunc(&a,&b)

print(a, b)