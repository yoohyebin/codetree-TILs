let x = readLine()!.split(separator: " ").map{Int(String($0))!}
let (x1, x2, x3, x4) = (x[0], x[1], x[2], x[3])

if x2 < x3 || x4 < x1 {
     print("nonintersecting")
} else {
    print("intersecting")
}