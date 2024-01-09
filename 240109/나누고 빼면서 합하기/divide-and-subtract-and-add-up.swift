let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
var (_,m) = (nm[0], nm[1])
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

func solution() {
    var sum = 0

    while m != 1 {
        sum += arr[m-1]
        if m%2 == 1 {
            m -= 1
        } else {
            m  /= 2
        }
    }
    print(sum + arr[0])
}
solution()