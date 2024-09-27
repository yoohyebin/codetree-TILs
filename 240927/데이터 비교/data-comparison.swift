let _ = Int(readLine()!)!
var set = Set<Int>()

var arr1 = readLine()!.split(separator: " ").map{Int(String($0))!}
for i in arr1{
    set.insert(i)
}

let m = Int(readLine()!)!
var arr2 = readLine()!.split(separator: " ").map{Int(String($0))!}
var result = ""
for i in arr2{
    if set.contains(i){
        result += "1 "
    } else {
        result += "0 "
    }
}

print(result)