let rc = readLine()!.split(separator: " ").map{Int(String($0))!}
let (r,c) = (rc[0], rc[1])
var arr = [[String]]()
var result = 0

for _ in 0..<r {
    arr.append(readLine()!.split(separator: " ").map{String($0)})
}

for i in 1..<r-1 {
    for j in 1..<c-1 {
        for k in i+1..<r-1 {
            for l in j+1..<c-1 {
                if arr[0][0] != arr[i][j], arr[i][j] != arr[k][l], arr[k][l] != arr[r-1][c-1] {
                    result += 1
                }
            }
        }
    }
}

print(result)