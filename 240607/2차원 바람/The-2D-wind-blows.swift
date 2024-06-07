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
        let temp1 = arr[r1][c1]
        let temp2 = arr[r1][c2]
        let temp3 = arr[r2][c2]
        let temp4 = arr[r2][c1]
        
        arr[r1][c1+1...c2] = [temp1] + arr[r1][c1+1..<c2]
        
        for i in stride(from: r1+2, through: r2, by: 1) {
            arr[i][c2] = arr[i-1][c2]
        }
        arr[r1+1][c2] = temp2
        
        arr[r2][c1..<c2] = arr[r2][c1+1..<c2] + [temp3]
        
        for i in stride(from: r1, to: r2-1, by: 1) {
            arr[i][c1] = arr[i+1][c1]
        }
        arr[r2-1][c1] = temp4
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