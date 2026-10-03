// SE4041 – Mobile Application Design & Development
// Practical 02 – Exercise 01: Arrays

// Step 1 – Create an Array
var marks = [72, 65, 48, 90, 55]

print(marks)

// Step 2 – Access Array Elements
print(marks[0])
print(marks[2])
print(marks[4])

// Step 3 – Useful Array Properties
print(marks.count)
print(marks.isEmpty)
print(marks.first as Any)
print(marks.last as Any)

// Step 4 – Modify an Array
marks[2] = 52

print(marks)

marks.append(88)
marks.insert(60, at: 1)

print(marks)

marks.removeLast()
marks.remove(at: 1)

print(marks)

// Step 5 – Useful Array Methods
marks = [72, 65, 48, 90, 55]

print(marks.max()!)
print(marks.min()!)
print(marks.contains(90))
print(marks.sorted())
print(marks.sorted(by: >))

let total = marks.reduce(0, +)

print(total)

let average = Double(total) / Double(marks.count)

print(average)

// Activity 1
var modules = ["SE4041", "IT2020", "IT2030", "IT2040", "IT2050"]

// 1. Display the entire array
print(modules)

// 2. Display the first module
print(modules[0])

// 3. Display the last module
print(modules[modules.count - 1])

// 4. Add one new module
modules.append("SE4060")

// 5. Display the number of modules
print(modules.count)

// 6. Check whether "SE4041" exists in the array
print(modules.contains("SE4041"))
