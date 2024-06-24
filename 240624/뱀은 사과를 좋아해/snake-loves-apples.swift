let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m,k) = (input[0], input[1], input[2])
var apple = Array(repeating: Array(repeating: false, count: n), count: n)
var dirs = [(d: String, p: Int)]()

for _ in 0..<m {
    let value = readLine()!.split(separator: " ").map{Int(String($0))!}
    apple[value[0]-1][value[1]-1] = true
}

for _ in 0..<k {
    let value = readLine()!.split(separator: " ").map{String($0)}
    dirs.append((value[0], Int(value[1])!))
}

let dx = [-1, 1, 0, 0], dy = [0, 0, 1, -1]
let dirMap = ["U": 0, "D": 1, "R": 2, "L": 3]

var snake: [(x: Int, y: Int)] = [(0,0)]
var (x, y) = (0, 0)
var result = 0

func move_snake(_ x: Int, _ y: Int) -> Bool {
    if apple[x][y] {
        apple[x][y] = false
    } else {
        snake.removeLast()
    }
    
    if snake.filter({$0.x == x && $0.y == y}).count >= 1 {
        return false
    } else {
        snake.insert((x,y), at: 0)
    }
    
    return true
}

func move(_ dir: Int, _ num: Int) -> Bool {
    for _ in 0..<num {
        result += 1
        
        let (head_x, head_y) = snake[0]
        let nx = head_x + dx[dir]
        let ny = head_y + dy[dir]
        
        if nx<0 || nx>=n || ny<0 || ny>=n {
            return false
        }
        
        if !move_snake(nx, ny) {
            return false
        }
    }
    
    return true
}

for i in 0..<k {
    if !move(dirMap[dirs[i].d]!, dirs[i].p) {
        break
    }
}

print(result)