let arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()

for a in 0...40 {
    for b in a...40 {
        for c in b...40 {
            for d in c...40 {
                let arr2 = [a,b,c,d,a + b, b + c, c + d, d + a, a + c, b + d, a + b + c, a + b + d, a + c + d, b + c + d, a + b + c + d].sorted()
                
                if arr == arr2 {
                    print(a, b, c, d)
                    break
                }
            }

        }
    }
}