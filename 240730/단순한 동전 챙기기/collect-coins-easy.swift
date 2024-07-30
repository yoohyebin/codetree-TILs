let n = Int(readLine()!)!
var arr = [[String]]()
var coin_pos = [(x: Int, y: Int)]()
var start_pos: (x: Int, y: Int) = (0, 0)
var end_pos: (x: Int, y: Int) = (0, 0)
var selected = [(x: Int, y: Int)]()
var result = Int.max

func cal() -> Int {
    var moves = abs(start_pos.x-selected[0].x) +  abs(start_pos.y-selected[0].y)
    
    for i in 0..<2 {
        moves += abs(selected[i].x-selected[i+1].x) +  abs(selected[i].y-selected[i+1].y)
    }
    moves += abs(selected[2].x-end_pos.x) +  abs(selected[2].y-end_pos.y)
    
    return moves
}

func solution(_ idx: Int, _ cnt: Int) {
    if cnt == 3 {
        result = min(result, cal())
        return
    }
    
    if idx == coin_pos.count {
        return
    }
    
    solution(idx+1, cnt)
    
    selected.append(coin_pos[idx])
    solution(idx+1, cnt+1)
    selected.removeLast()
}

for _ in 0..<n {
    arr.append(readLine()!.map{String($0)})
}

for i in 0..<n {
    for j in 0..<n {
        if arr[i][j] == "S" {
            start_pos = (i, j)
        } else  if arr[i][j] == "E" {
            end_pos = (i, j)
        }
    }
}

for num in 1...9 {
    for i in 0..<n {
        for j in 0..<n {
            if arr[i][j] == String(num) {
                coin_pos.append((i, j))
            }
        }
    }
}

solution(0, 0)

print(result == Int.max ? -1 : result)