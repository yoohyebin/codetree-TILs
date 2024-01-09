func solution(_ s: String) {
    print(Set(s).count>=2 ? "Yes" : "No")
}
let s = readLine()!
solution(s)