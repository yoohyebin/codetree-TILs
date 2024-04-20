var arr = Array(repeating: 0, count: 101)
let ab = readLine()!.split(separator: " ").map{Int(String($0))!}
let cd = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in ab[0]..<ab[1] {
    arr[i] = 1
}

for i in cd[0]..<cd[1] {
    arr[i] = 1
}

print(arr.filter{$0 == 1}.count)