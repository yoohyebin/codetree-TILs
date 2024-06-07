let nmq = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,q) = (nmq[0], nmq[1], nmq[2])
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

if q == 0 {
    for i in 0..<n {
        print(arr[i].map{String($0)}.joined(separator: " "))
    }
}

else {
    var infos = [(r1: Int, c1: Int, r2: Int, c2: Int)]()
    
    for _ in 0..<q {
        let input = readLine()!.split(separator: " ").map{Int(String($0))!-1}
        infos.append((input[0], input[1], input[2], input[3]))
    }
    
    func move_circle(r1: Int, c1: Int, r2: Int, c2: Int) {
        let temp = arr[r1][c1]
        
        for r in r1..<r2 {
            arr[r][c1] = arr[r+1][c1]
        }
        
        for c in c1..<c2 {
            arr[r2][c] = arr[r2][c+1]
        }
        
        for r in stride(from: r2, to: r1, by: -1) {
            arr[r][c2] = arr[r-1][c2]
        }
        
        for c in stride(from: c2, to: c1, by: -1) {
            arr[r1][c] = arr[r1][c-1]
        }
        
        arr[r1][c1+1] = temp
    }
    
    func cal_average(r1: Int, c1: Int, r2: Int, c2: Int) {
        for i in r1...r2 {
            for j in c1...c2 {
                var sum = arr[i][j]
                var cnt = 1
                
                if i-1 >= 0 {
                    sum += arr[i-1][j]
                    cnt += 1
                }
                if i+1 < n {
                    sum += arr[i+1][j]
                    cnt += 1
                }
                if j-1 >= 0 {
                    sum += arr[i][j-1]
                    cnt += 1
                }
                if j+1 < m {
                    sum += arr[i][j+1]
                    cnt += 1
                }
                
                result[i][j] = sum/cnt
            }
        }
    }
    
    var result = [[Int]]()
    for (r1, c1, r2, c2) in infos {
        move_circle(r1: r1, c1: c1, r2: r2, c2: c2)
        
        result = arr
        cal_average(r1: r1, c1: c1, r2: r2, c2: c2)
        
        arr = result
    }
    
    for i in 0..<n {
        print(result[i].map{String($0)}.joined(separator: " "))
    }
}