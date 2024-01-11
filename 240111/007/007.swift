class Code {
    let secret: String
    let location: String
    let time: String
    
    init(secret: String, location: String, time: String) {
        self.secret = secret
        self.location = location
        self.time = time
    }
}

let input = readLine()!.split(separator: " ").map{String($0)}
let code = Code(secret: input[0], location: input[1], time: input[2])

print("secret code : \(code.secret)")
print("meeting point : \(code.location)")
print("time : \(code.time)")