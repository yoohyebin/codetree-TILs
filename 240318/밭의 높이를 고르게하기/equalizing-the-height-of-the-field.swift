let nht = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,h,t) = (nht[0], nht[1], nht[2])
let arr = readLine()!.split(separator: " ").map{abs(h-Int(String($0))!)}

var result = Int.max

for i in 0...n-t {
    result = min(result, arr[i..<i+t].reduce(0,+)
}

print(result)