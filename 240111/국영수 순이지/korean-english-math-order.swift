class Student {
    let name: String
    let kor: Int
    let eng: Int
    let math: Int
    
    init(name: String, kor: Int, eng: Int, math: Int) {
        self.name = name
        self.kor = kor
        self.math = math
        self.eng = eng
    }
}

let n = Int(readLine()!)!
var students = [Student]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    students.append(Student(name: input[0], kor: Int(input[1])!, eng: Int(input[2])!, math: Int(input[3])!))
}

students.sort{
    if $0.kor == $1.kor {
        if $0.eng == $1.eng {
            return $0.math > $1.math
        } else {
            return $0.eng > $1.eng
        }
    } else {
        return $0.kor > $1.kor
    }
}

for student in students {
    print(student.name, student.kor, student.eng, student.math)
}