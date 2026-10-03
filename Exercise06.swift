// SE4041 – Mobile Application Design & Development
// Practical 02 – Exercise 06: Loops

// Part A – for-in
for i in 1...5 {
    print("Week \(i)")
}

// Loop Through an Array
let names = ["Amal", "Nimali", "Ruwan"]

for name in names {
    print(name)
}

// Using enumerated()
for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

// Part B – while
var balance = 1000
var week = 0

while balance > 0 {
    balance -= 300
    week += 1
}

print("Ran out in week \(week)")

// Part C – repeat-while
var attempts = 0

repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

// Section 12 – break and continue
let marksSample = [72, -1, 65, 48, 90]

for mark in marksSample {
    if mark < 0 {
        continue
    }

    if mark == 90 {
        break
    }

    print(mark)
}

// Activity 6
let marks = [72, -1, 55, 43, 90, 88]

for mark in marks {
    if mark < 0 {
        continue
    }

    if mark == 90 {
        break
    }

    print(mark)
}

// Section 13 – Putting Collections and Control Flow Together
let studentNames = ["Amal", "Nimali", "Ruwan", "Sanduni"]
let studentMarks = [72, 45, 48, 90]

let passMark = 50

var passedStudents: [String] = []

for (index, mark) in studentMarks.enumerated() {
    if mark >= passMark {
        passedStudents.append(studentNames[index])
        print("\(studentNames[index]): \(mark) - Pass")
    } else {
        print("\(studentNames[index]): \(mark) - Fail")
    }
}

print("Passed Students: \(passedStudents)")

// Section 14 – Knowledge Check
// 1. What is the main difference between an array and a set?
//    An array is an ordered collection that allows duplicate values and accesses elements via integer indices.
//    A set is an unordered collection of unique elements that enforces uniqueness and provides fast membership checking.
//
// 2. Why does an array allow duplicates?
//    Arrays simply store items sequentially by their position/index, without checking or restricting value uniqueness.
//
// 3. Why does a set ignore duplicate values?
//    Sets require elements to conform to Hashable and maintain uniqueness using hash values; duplicates are automatically discarded upon insertion.
//
// 4. How do you access an array item?
//    Using subscript syntax with a zero-based integer index, for example: marks[0].
//
// 5. How do you access a dictionary value?
//    Using subscript syntax with the associated key, for example: marks["Amal"].
//
// 6. Why does dictionary lookup return an optional?
//    Because the requested key may not exist in the dictionary, so Swift returns nil if the key is not found.
//
// 7. What is the difference between ... and ..< ?
//    The closed range operator (...) includes both the lower and upper bounds (e.g., 1...5 includes 1, 2, 3, 4, 5).
//    The half-open range operator (..<) includes the lower bound but excludes the upper bound (e.g., 1..<5 includes 1, 2, 3, 4).
//
// 8. When should you use if?
//    When branching execution based on Boolean conditions (true/false) or evaluating sequential conditions.
//
// 9. When can switch be clearer than if / else if?
//    When comparing a single expression against multiple distinct values, discrete cases, or numeric ranges.
//
// 10. What is the difference between for-in and while?
//     for-in iterates over a defined sequence, range, or collection a predetermined number of times.
//     while repeats a block of code dynamically as long as its Boolean condition evaluates to true.
//
// 11. What is the main difference between while and repeat-while?
//     A while loop checks its condition before executing the loop body (meaning it may run 0 times).
//     A repeat-while loop executes the body first and evaluates the condition afterward (guaranteed to run at least once).
//
// 12. What does continue do?
//     Skips the remainder of the current loop iteration and immediately moves on to the next iteration.
//
// 13. What does break do?
//     Immediately stops and exits the loop entirely, transferring execution to the statement following the loop.
