let nmq = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,q) = (nmq[0], nmq[1], nmq[2])
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var infos = [(r: Int, d: Bool)]()

for _ in 0..<q {
    let input = readLine()!.split(separator: " ").map{String($0)}
    infos.append((Int(input[0])!-1, input[1] == "R"))
}

func wind(_ r: Int, _ d: Bool) {
    if d {
        let temp = arr[r][0]
        arr[r] = arr[r][1..<m]+[temp]
    } else {
        let temp = arr[r][m-1]
        arr[r] = [temp] + arr[r][0..<m-1]
    }
}

func move_up(_ r: Int, _ d: Bool) {
    wind(r,d)
    
    if r != 0 {
        for i in 0..<m {
            if arr[r][i] == arr[r-1][i] {
                move_up(r-1, !d)
                break
            }
        }
    }
}

func move_down(_ r: Int, _ d: Bool) {
    wind(r,d)
    
    if r != n-1 {
        for i in 0..<m {
            if arr[r][i] == arr[r+1][i] {
                move_down(r+1, !d)
                break
            }
        }
    }
}

func solution(_ r: Int, _ d: Bool) {
    wind(r,d)
    
    if r != 0 {
        for i in 0..<m {
            if arr[r][i] == arr[r-1][i] {
                move_up(r-1, !d)
                break
            }
        }
    }
    
    if r != n-1 {
        for i in 0..<m {
            if arr[r][i] == arr[r+1][i] {
                move_down(r+1, !d)
                break
            }
        }
    }
}

for (r,d) in infos {
    solution(r, d)
}

for i in 0..<n {
    print(arr[i].map{String($0)}.joined(separator: " "))
}