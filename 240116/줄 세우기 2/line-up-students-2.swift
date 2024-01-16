struct Student {
    let number: Int
    let height: Int
    let weight: Int
    
    init(number: Int, height: Int, weight: Int) {
        self.number = number
        self.height = height
        self.weight = weight
    }
}

let n = Int(readLine()!)!
var students = [Student]()

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    students.append(Student(number: i+1, height: input[0], weight: input[1]))
}
students.sort {
    if $0.height == $1.height {
        return $0.weight > $1.weight
    } else {
        return $0.height < $1.height
    }
}

for student in students {
    print(student.height, student.weight, student.number)
}