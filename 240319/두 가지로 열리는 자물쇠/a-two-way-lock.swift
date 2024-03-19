let n = Int(readLine()!)!
let arrA = readLine()!.split(separator: " ").map{Int(String($0))!}
let arrB = readLine()!.split(separator: " ").map{Int(String($0))!}

var result = 0

for i in 1...n {
    for j in 1...n {
        for k in 1...n {
            if (abs(arrA[0]-i) <= 2 || abs(arrA[0]-i) >= n-2) &&
                (abs(arrA[1]-j) <= 2 || abs(arrA[1]-j) >= n-2) &&
                (abs(arrA[2]-k) <= 2 || abs(arrA[2]-k) >= n-2) {
                result += 1
            }
            else if (abs(arrB[0]-i) <= 2 || abs(arrB[0]-i) >= n-2) &&
                    (abs(arrB[1]-j) <= 2 || abs(arrB[1]-j) >= n-2) &&
                    (abs(arrB[2]-k) <= 2 || abs(arrB[2]-k) >= n-2) {
                result += 1
            }
        }
    }
}


print(result)