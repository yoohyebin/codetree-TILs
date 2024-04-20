let x = readLine()!.split(separator: " ").map{Int(String($0))!}
let (x1, y1, x2, y2) = (x[0], x[1], x[2], x[3])
let a = readLine()!.split(separator: " ").map{Int(String($0))!}
let (a1, b1, a2, b2) = (a[0], a[1], a[2], a[3])

if x1 <= a1 && a1 <= x2 && y1 <= b2 && b2 <= y2 {
    print("overlapping")
} else if a1 <= x1 && x1 <= a2 && b1 <= y2 && y2 <= b2 {
    print("overlapping")
} else {
    print("nonoverlapping")
}