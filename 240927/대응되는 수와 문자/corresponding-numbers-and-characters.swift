let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n, m) = (nm[0], nm[1])
var dictString = [Int: String]()
var dictNum = [String: Int]()

for i in 1...n {
    let input = readLine()!
    
    dictString[i] = input
    dictNum[input] = i
}

for _ in 0..<m {
    let input = readLine()!
    
    if let num = Int(input) {
        print(dictString[num] ?? 0)
    } else {
        print(dictNum[input] ?? "")
    }
}