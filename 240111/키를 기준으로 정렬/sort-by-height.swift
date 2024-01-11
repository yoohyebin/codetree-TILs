class Info {
    let name: String
    let height: String
    let weight: String
    
    init(name: String, height: String, weight: String) {
        self.name = name
        self.height = height
        self.weight = weight
    }
}

let n = Int(readLine()!)!
var infos = [Info]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    infos.append(Info(name: input[0], height: input[1], weight: input[2]))
}

infos.sort{$0.height < $1.height}

for info in infos {
    print(info.name, info.height, info.weight)
}