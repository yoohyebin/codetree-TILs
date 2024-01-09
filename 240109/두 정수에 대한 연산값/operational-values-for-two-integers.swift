func solution(_ a: inout Int, _ b: inout Int) {
    if a > b {
        a+=25
        b*=2
    } else {
        a*=2
        b+=25
    }
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var (a,b) = (input[0], input[1])
solution(&a, &b)

print(a, b)