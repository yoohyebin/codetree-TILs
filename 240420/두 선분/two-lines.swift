let x = readLine()!.split(separator: " ").map{Int(String($0))!}
let (x1, x2, x3, x4) = (x[0], x[1], x[2], x[3])

if x3 >= x1 && x2 <= x2 {
    print("intersecting")
} else if x4 >= x1 && x4 <= x2 {
    print("intersecting")
} else if x1 >= x3 && x1 <= x4 {
    print("intersecting")
} else if x2 >= x3 && x2 <= x4 {
    print("intersecting")
} else {
    print("nonintersecting")
}