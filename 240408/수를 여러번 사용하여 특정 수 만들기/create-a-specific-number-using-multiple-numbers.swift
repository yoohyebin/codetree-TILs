let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (a,b,c) = (input[0], input[1], input[2])
var result = 0

for i in 0...c/a {
    var sum = a*i

    let num_b = (c-sum)/b
    
    sum += num_b*b
    
    result = max(result, sum)
}

print(result)