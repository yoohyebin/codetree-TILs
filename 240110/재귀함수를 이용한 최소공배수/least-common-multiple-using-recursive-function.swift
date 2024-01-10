func gcd(_ a: Int, _ b: Int) -> Int {
    return b==0 ? a : gcd(b,a%b)
}
func lcm(_ a: Int, _ b: Int) -> Int {
    return a*b / gcd(a, b)
}

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

func solution(_ n: Int) -> Int{
    if n == 0 {return arr[n]}
    return lcm(arr[n], solution(n-1))
}

print(solution(n-1))