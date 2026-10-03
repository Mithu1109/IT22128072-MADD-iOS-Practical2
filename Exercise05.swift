// SE4041 – Mobile Application Design & Development
// Practical 02 – Exercise 05: switch and Ranges

// Step 1 – Basic switch Statement
let grade = "B"

switch grade {
case "A":
    print("Excellent")

case "B", "C":
    print("Good")

case "D":
    print("Needs Work")

default:
    print("Unknown Grade")
}

// Step 2 – Using Ranges in a Switch
let mark = 68

switch mark {
case 75...100:
    print("Distinction")

case 50..<75:
    print("Pass")

case 0..<50:
    print("Fail")

default:
    print("Invalid Mark")
}

// Activity 5 – Temperature Description
let temperature = 27

switch temperature {
case ..<0:
    print("Freezing")

case 0...15:
    print("Cold")

case 16...25:
    print("Moderate")

case 26...35:
    print("Warm")

default:
    print("Hot")
}

// Testing with at least three temperatures
let testTemperatures = [-5, 12, 20, 27, 40]
for temp in testTemperatures {
    switch temp {
    case ..<0:
        print("Temperature \(temp): Freezing")
    case 0...15:
        print("Temperature \(temp): Cold")
    case 16...25:
        print("Temperature \(temp): Moderate")
    case 26...35:
        print("Temperature \(temp): Warm")
    default:
        print("Temperature \(temp): Hot")
    }
}
