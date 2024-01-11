class Bomb {
    let code: String
    let color: String
    let second: String
    
    init(code: String, color: String, second: String) {
        self.code = code
        self.color = color
        self.second = second
    }
}

let input = readLine()!.split(separator: " ").map{String($0)}
let bomb = Bomb(code: input[0], color: input[1], second: input[2])

print("code : \(bomb.code)")
print("color : \(bomb.color)")
print("second : \(bomb.second)")