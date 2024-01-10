let k = Int(readLine()!)!

func solution1(_ n: Int) {
    if n > k {
        return
    }

    print(n, terminator: " ")
    solution1(n+1)
}

func solution2(_ n: Int) {
    if n == 0 {
        return
    }

    print(n, terminator: " ")
    solution2(n-1)
}



solution1(1)
print()
solution2(k)