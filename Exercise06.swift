// Exercise 06 – Structures, Methods, Classes, Value vs Reference
// (the document redefines Student and Grade several times, so each example is
//  wrapped in do { } instead of pasting every block into one scope)

// 14. Structures
do {
    struct Student {

        var name: String
        var mark: Int
        var registered: Bool = true
    }

    let student = Student(
        name: "Amal",
        mark: 72
    )

    print(student.name)
    print(student.mark)
    print(student.registered)
}

// 15. Computed Properties
do {
    struct Rectangle {

        var width: Double
        var height: Double

        var area: Double {
            return width * height
        }
    }

    let rectangle = Rectangle(
        width: 4,
        height: 3
    )

    print(rectangle.area)
}

// Add a Computed Grade
do {
    enum Grade: String {
        case a = "A"
        case b = "B"
        case c = "C"
        case f = "F"
    }

    struct Student {

        var name: String
        var mark: Int

        var grade: Grade {

            switch mark {

            case 75...100:
                return .a

            case 65..<75:
                return .b

            case 50..<65:
                return .c

            default:
                return .f
            }
        }
    }

    let student = Student(
        name: "Amal",
        mark: 72
    )

    print(student.name)
    print(student.grade.rawValue)
}

// 16. Methods
do {
    struct Student {

        var name: String
        var mark: Int

        func displayDetails() {
            print("\(name) received \(mark)")
        }
    }

    let student = Student(
        name: "Kamal",
        mark: 75
    )

    student.displayDetails()
}

// mutating Methods
do {
    struct Counter {

        var count = 0

        mutating func increment() {
            count += 1
        }
    }

    var counter = Counter()

    counter.increment()
    counter.increment()

    print(counter.count)
}

// 17. Classes
do {
    class Lecturer {

        var name: String
        var module: String

        init(name: String, module: String) {

            self.name = name
            self.module = module
        }

        func introduce() {

            print("\(name) teaches \(module)")
        }
    }

    let lecturer = Lecturer(
        name: "Nushkan",
        module: "SE4041"
    )

    lecturer.introduce()
}

// 18. Struct vs Class – Struct Example
do {
    struct Point {
        var x = 0
    }

    var firstPoint = Point()

    var secondPoint = firstPoint

    secondPoint.x = 99

    print(firstPoint.x)
    print(secondPoint.x)
}

// Class Example
do {
    class CounterClass {
        var count = 0
    }

    let firstCounter = CounterClass()

    let secondCounter = firstCounter

    secondCounter.count = 99

    print(firstCounter.count)
    print(secondCounter.count)
}
