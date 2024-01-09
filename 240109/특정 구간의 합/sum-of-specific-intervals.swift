let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

func solution() {
    for i in 0..<nm[1] {
        let input = readLine()!.split(separator: " ").map{Int(String($0))!}
        print(arr[input[0]-1..<input[1]].reduce(0,+))
    }
}

solution()