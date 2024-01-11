class Student {
    let name: String
    let kor: Int
    let eng: Int
    let math: Int
    var score: Int = 0
    
    init(name: String, kor: Int, eng: Int, math: Int) {
        self.name = name
        self.kor = kor
        self.eng = eng
        self.math = math
        score = kor+eng+math
    }
}

let n = Int(readLine()!)!
var students = [Student]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    students.append(Student(name: input[0], kor: Int(input[1])!, eng: Int(input[2])!, math: Int(input[3])!))
}

students.sort{$0.score < $1.score}

for student in students {
    print(student.name, student.kor, student.eng, student.math)
}