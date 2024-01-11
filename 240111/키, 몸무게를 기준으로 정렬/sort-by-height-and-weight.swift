class Info {
    let name: String
    let height: Int
    let weight: Int
    
    init(name: String, height: Int, weight: Int) {
        self.name = name
        self.height = height
        self.weight = weight
    }
}

let n = Int(readLine()!)!
var infos = [Info]()

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    infos.append(Info(name: input[0], height: Int(input[1])!, weight: Int(input[2])!))
}

infos.sort {
    if $0.height == $1.height {
        return $0.weight > $1.weight
    } else {
        return $0.height < $1.height
    }
}
for info in infos {
    print(info.name, info.height, info.weight)
}