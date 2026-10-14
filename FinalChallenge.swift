// Final Practical Task – Student Management System

// Part A – Create a Grade Enum
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

// Part B – Create a Student Struct
struct Student {

    var studentID: String
    var name: String
    var mark: Int

    // Part C – Add a Computed Grade Property
    var grade: Grade {

        switch mark {

        case 80...100:
            return .a

        case 75..<80:
            return .aMinus

        case 70..<75:
            return .bPlus

        case 65..<70:
            return .b

        case 60..<65:
            return .bMinus

        case 55..<60:
            return .cPlus

        case 45..<55:
            return .c

        case 40..<45:
            return .cMinus

        default:
            return .f
        }
    }

    // Part D – Add a Method
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
    }
}

// Part E – Create Students
let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]

// Part F – Display Students
for student in students {
    student.displayDetails()
}

// Part G – Use filter
let passedStudents = students.filter {
    $0.mark >= 50
}

print("Passed Students:")
for student in passedStudents {
    print(student.name)
}

// Part H – Use map
let studentNames = students.map {
    $0.name
}

print(studentNames)

// Part I – Use reduce
let totalMarks = students.reduce(0) {
    $0 + $1.mark
}

let average = Double(totalMarks) / Double(students.count)

print("Class Average: \(average)")
