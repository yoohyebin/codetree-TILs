class Info {
    let name: String
    let height: Int
    let weight: String
    
    init(name: String, height: Int, weight: String) {
        self.name = name
        self.height = height
        self.weight = weight
    }
}

var infos = [Info]()

for i in 0..<5 {
    let input = readLine()!.split(separator: " ").map{String($0)}
    infos.append(Info(name: input[0], height: Int(input[1])!, weight: input[2]))
}

print("name")
for info in infos.sorted(by: {$0.name < $1.name}) {
    print(info.name, info.height, info.weight)
}

print("\nheight")
for info in infos.sorted(by: {$0.height > $1.height}) {
    print(info.name, info.height, info.weight)
}