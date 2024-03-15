let n = Int(readLine()!)!
var arr = [Int]()
var result = 0

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

for i in 0..<n-2 {
    for j in i+1..<n-1 {
        for k in j+1..<n {
            var(a,b,c) = (arr[i], arr[j], arr[k])
            var flag = true
            
            while (a != 0 && b != 0 && c != 0) {
                if a%10 + b%10 + c%10 >= 10 {
                    flag = false
                    break
                }
                a/=10
                b/=10
                c/=10
            }
            
            if flag {
                result = max(result, arr[i]+arr[j]+arr[k])
            }
        }
    }
}

print(result)