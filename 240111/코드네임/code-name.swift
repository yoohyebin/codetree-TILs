class Agent {
    let codeName: String
    let score: Int
    
    init(codeName: String, score: Int) {
        self.codeName = codeName
        self.score = score
    }
}

var agents = [Agent]()
for _ in 0..<5 {
    let input = readLine()!.split(separator: " ").map{String($0)}
    agents.append(Agent(codeName: input[0], score: Int(input[1])!))
}

agents.sort{$0.score < $1.score}
print(agents[0].codeName, agents[0].score)