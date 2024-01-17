let input = readLine()!
let result = (Int(input, radix: 2) ?? 0)*17
print(String(result, radix: 2))