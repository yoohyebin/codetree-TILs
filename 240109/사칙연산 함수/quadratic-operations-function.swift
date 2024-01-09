func solution(_ a: Int, _ o: String, _ c: Int) -> String {
    switch o {
        case "+":
            return "\(a) + \(c) = \(a+c)"
        case "-":
            return "\(a) - \(c) = \(a-c)"

        case "/":
            return "\(a) / \(c) = \(a/c)"

        case "*":
            return "\(a) * \(c) = \(a*c)"

        default: return "False"
    }
}

let input = readLine()!.split(separator: " ").map{String($0)}
print(solution(Int(input[0])!, input[1], Int(input[2])!))