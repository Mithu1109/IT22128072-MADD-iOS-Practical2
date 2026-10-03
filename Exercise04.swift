// SE4041 – Mobile Application Design & Development
// Practical 02 – Exercise 04: if, else if, and else

// Step 1 – if / else if / else Decision Making
let mark = 68

if mark >= 75 {
    print("Distinction")
} else if mark >= 50 {
    print("Pass")
} else {
    print("Fail")
}

// Activity 4
let attendance = 78

if attendance >= 90 {
    print("Excellent attendance")
} else if attendance >= 80 {
    print("Good attendance")
} else if attendance >= 70 {
    print("Acceptable attendance")
} else {
    print("Low attendance")
}

// Testing with different values
let testValues = [95, 82, 73, 64]
for testAttendance in testValues {
    if testAttendance >= 90 {
        print("Attendance \(testAttendance)%: Excellent attendance")
    } else if testAttendance >= 80 {
        print("Attendance \(testAttendance)%: Good attendance")
    } else if testAttendance >= 70 {
        print("Attendance \(testAttendance)%: Acceptable attendance")
    } else {
        print("Attendance \(testAttendance)%: Low attendance")
    }
}
