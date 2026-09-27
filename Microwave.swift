import Foundation

/**
 * This program asks the user for their lunch item
 * and calculates the time it needs to be heated.
 * @author Yoma Ozoh
 * @version 1.0
 * @since 2026-09-24
 */
// Base heating times in seconds
let subTime: Double = 60.0
let pizzaTime: Double = 45.0
let soupTime: Double = 105.0
let maxQuantity = 3

// set base time to 0
var baseTime: Double = 0.0

// ask user to enter their lunch item
print("Please enter your lunch item (Sub, Pizza, Soup): ", terminator: "")
guard let itemInput = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) else {
    exit(0)
}

// Determine base time based on user input
if itemInput.lowercased() == "sub" {
    baseTime = subTime
} else if itemInput.lowercased() == "pizza" {
    baseTime = pizzaTime
} else if itemInput.lowercased() == "soup" {
    baseTime = soupTime
} else {
    print("Invalid item selected.")
    exit(0)
}

print("How many items are you heating up? ", terminator: "")

// if user doesn't input a valid integer
guard let inputString = readLine(), let quantity = Int(inputString) else {
    print("Invalid input. Please enter a whole number (1, 2, or 3).")
    exit(0)
}

var totalTime: Double = 0.0

// Calculate total heating time based on quantity
if quantity == 1 {
    totalTime = baseTime
} else if quantity == 2 {
    totalTime = baseTime * 1.5
} else if quantity == 3 {
    totalTime = baseTime * 2.0
} else {
    // tell user they can't input more than the maximum
    print("Sorry, the maximum number of items is \(maxQuantity).")
    exit(0)
}

print("You may heat up for: \(totalTime) seconds.")