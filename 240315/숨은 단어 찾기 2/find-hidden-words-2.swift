let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let(n,m) = (nm[0], nm[1])
let dxs = [1,1,1,0,-1,-1,-1,0]
let dys = [-1,0,1,1,1,0,-1,-1]
var arr = [[String]]()
var result = 0

for _ in 0..<n {
    arr.append(readLine()!.map{String($0)})
}

for i in 0..<n {
    for j in 0..<m {
        if arr[i][j] != "L" {continue}
        
        for idx in 0..<8 {
            var nx = i+dxs[idx]
            var ny = j+dys[idx]
            
            if nx<0 || nx>=n || ny<0 || ny>=m || arr[nx][ny] != "E"{
                continue
            }
            
            nx += dxs[idx]
            ny += dys[idx]
            
            if nx<0 || nx>=n || ny<0 || ny>=m || arr[nx][ny] != "E"{
                continue
            }
            result += 1
        }
    }
}

print(result)