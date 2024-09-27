let words = readLine()!.map{String($0)}
var dict = [String: Int]()

for (i, s) in words.enumerated() {
    if dict[s] != nil {
        dict[s] = Int.max
    } else {
        dict[s] = i
    }
}

let result = dict.filter{$0.value == dict.values.min()}.keys.first ?? "None"
print(result)