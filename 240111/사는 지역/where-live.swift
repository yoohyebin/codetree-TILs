class Info {
    let name: String
    let address: String
    let city: String
    
    init(name: String, address: String, city: String) {
        self.name = name
        self.address = address
        self.city = city
    }
}

let n = Int(readLine()!)!
var infos = [Info]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    infos.append(Info(name: input[0], address: input[1], city: input[2]))
}

infos.sort {$0.name > $1.name}
print("name \(infos[0].name)")
print("addr \(infos[0].address)")
print("city \(infos[0].city)")