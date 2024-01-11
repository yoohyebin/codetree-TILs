class Product {
    let name: String
    let code: String
    
    init(name: String = "codetree", code: String = "50") {
        self.name = name
        self.code = code
    }
}

let input = readLine()!.split(separator: " ").map{String($0)}
let product1 = Product()
let product2 = Product(name: input[0], code: input[1])

print("product \(product1.code) is \(product1.name)")
print("product \(product2.code) is \(product2.name)")