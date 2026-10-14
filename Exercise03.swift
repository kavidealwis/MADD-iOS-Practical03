// Exercise 03 – Tuples

func summary(of marks: [Int])
    -> (minimum: Int, maximum: Int, average: Double) {

    let total = marks.reduce(0, +)

    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

do {
    let result = summary(of: [72, 65, 48, 90])

    print(result.minimum)
    print(result.maximum)
    print(result.average)
}

// Tuple Unpacking
do {
    let (low, high, average) = summary(of: [72, 65, 48, 90])

    print(low)
    print(high)
    print(average)
}

// If you do not need one part
do {
    let (low, high, _) = summary(of: [72, 65, 48, 90])

    print(low)
    print(high)
}

// Activity 4
func analyzeMarks(_ marks: [Int])
    -> (total: Int, average: Double) {

    let total = marks.reduce(0, +)

    return (
        total,
        Double(total) / Double(marks.count)
    )
}

let analysis = analyzeMarks([60, 70, 80, 90])

print("Total: \(analysis.total)")
print("Average: \(analysis.average)")
