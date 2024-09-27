let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var questions = readLine()!.split(separator: " ").map{Int(String($0))!}
var set = Set<Int>()

for i in arr {
    set.insert(i)
}

for q in questions {
    var result = -1
    if arr.first ?? Int.max <= q{
        for i in stride(from: q, through: 1, by: -1) {
            if set.contains(i) {
                result = set.remove(i) ?? 0
                arr.remove(at: arr.firstIndex(of: i) ?? 0)
                break
            }
        }
    }
    print(result)
}