class Weather {
    let date: String
    let day: String
    let weather: String
    
    init(date: String, day: String, weather: String) {
        self.date = date
        self.day = day
        self.weather = weather
    }
}

let n = Int(readLine()!)!
var weathers = [Weather]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    weathers.append(Weather(date: input[0], day: input[1], weather: input[2]))
}

weathers.sort{$0.date < $1.date}
let result = weathers.filter{$0.weather == "Rain"}.first!
print(result.date, result.day, result.weather)