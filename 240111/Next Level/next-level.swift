class User {
    let id: String
    let level: String
    
    init(id: String = "codetree", level: String = "10") {
        self.id = id
        self.level = level
    }
}

let input = readLine()!.split(separator: " ").map{String($0)}
let user1 = User()
let user2 = User(id: input[0], level: input[1])

print("user \(user1.id) lv \(user1.level)")
print("user \(user2.id) lv \(user2.level)")