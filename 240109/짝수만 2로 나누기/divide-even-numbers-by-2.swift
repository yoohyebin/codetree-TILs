func solution(_ arr: inout [Int]) {
    for i in 0..<arr.count {
        if arr[i]%2 == 0{
            arr[i] /= 2
        }
    }
}

let _ = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
solution(&input)
print(input.map{String($0)}.joined(separator: " "))