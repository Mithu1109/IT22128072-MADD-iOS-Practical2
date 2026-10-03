// SE4041 – Mobile Application Design & Development
// Practical 02 – Final Practical Task: Student Performance Manager

// Part A – Store Student Marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

// Part D – Passed Students Array
var passedStudents: [String] = []

// Part E – Unique Grades Set
var gradesAwarded: Set<String> = []

// Additional Challenge – Count Passes and Fails
var passCount = 0
var failCount = 0

// Part B & C – Display All Students and Determine Grades
print("==================================")
print("      STUDENT PERFORMANCE")
print("==================================")
print("")

for name in studentMarks.keys.sorted() {
    guard let mark = studentMarks[name] else { continue }

    // Part C – Determine Grade using switch and ranges
    let grade: String
    switch mark {
    case 80...100:
        grade = "A"
    case 75..<80:
        grade = "A-"
    case 70..<75:
        grade = "B+"
    case 65..<70:
        grade = "B"
    case 60..<65:
        grade = "B-"
    case 55..<60:
        grade = "C+"
    case 45..<55:
        grade = "C"
    case 40..<45:
        grade = "C-"
    case 0..<40:
        grade = "F"
    default:
        grade = "Invalid"
    }

    // Part E – Add to unique grades set
    gradesAwarded.insert(grade)

    // Part D – Identify passed students (Mark >= 50) and track counts
    if mark >= 50 {
        passedStudents.append(name)
        passCount += 1
    } else {
        failCount += 1
    }

    // Part B & C Output
    print("\(name) - \(mark) - \(grade)")
}

print("")
print("----------------------------------")
print("")

// Part D – Display Passed Students
print("Passed Students:")
for student in passedStudents {
    print(student)
}

print("")
print("----------------------------------")
print("")

// Part E – Display Unique Grades Awarded
print("Grades Awarded:")
for grade in gradesAwarded.sorted() {
    print(grade)
}

print("")
print("----------------------------------")
print("")

// Part F – Average Mark
let marksList = Array(studentMarks.values)
let total = marksList.reduce(0, +)
let average = Double(total) / Double(studentMarks.count)
print("Class Average: \(average)")

// Part G – Highest and Lowest Marks
if let highest = marksList.max() {
    print("Highest Mark: \(highest)")
}

if let lowest = marksList.min() {
    print("Lowest Mark: \(lowest)")
}

// Section 16 – Additional Challenge
print("")
print("----------------------------------")
print("       ADDITIONAL CHALLENGE")
print("----------------------------------")
print("")

print("Passed: \(passCount)")
print("Failed: \(failCount)")
print("")

// Search for a student using optional binding
let searchName = "Amal"
if let mark = studentMarks[searchName] {
    print("\(searchName)'s mark is \(mark)")
} else {
    print("Student not found")
}

let missingName = "John"
if let mark = studentMarks[missingName] {
    print("\(missingName)'s mark is \(mark)")
} else {
    print("Student not found")
}
