func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a%b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a*b / gcd(a, b)
}

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
print(lcm(nm[0], nm[1]))