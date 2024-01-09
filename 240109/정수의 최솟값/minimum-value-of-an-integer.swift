func solution(_ a: Int, _ b: Int, _ c: Int) {
    print(min(a,min(b,c)))
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
solution(input[0], input[1], input[2])