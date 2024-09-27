let words = readLine()!.map{String($0)}
var dict = [String: Int]()

for s in words {
    dict[s, default: 0] += 1
}


if dict.values.contains(1) {
    for s in words {
        if dict[s] == 1 {
            print(s)
            break
        }
    }
} else {
    print("None")
}