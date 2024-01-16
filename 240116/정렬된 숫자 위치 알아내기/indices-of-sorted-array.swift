let _ = readLine()!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var sortedArr = arr.sorted(by: <)

for i in 0..<arr.count {
    let index = sortedArr.firstIndex(of: arr[i]) ?? 0
    sortedArr[index] = 0
    print(index+1, terminator: " ")
}