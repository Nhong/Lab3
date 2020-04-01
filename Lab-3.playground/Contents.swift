import UIKit

var multiplyClosure = { (a: Int, b: Int) -> Int in
    return a * b
}

var addClosure = { (a: Int, b: Int) -> Int in
    return a + b
}

var minusClosure = { (a: Int, b: Int) -> Int in
    return a - b
}

var divideClosure = { (a: Int, b: Int) -> Int in
    return a / b
}

var modClosure = { (a: Int, b: Int) -> Int in
    return a % b
}

let result = multiplyClosure(2,3)

print(result)

func operateOfNumbers(_ a: Int,
                      _ b: Int,
                      operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
        
    return result
}

let resultOperation = operateOfNumbers(10,
                                       5,
                                       operation: modClosure)

print(resultOperation)


let voidClosure: () -> Void = {
    print("Welcome to Media drma technology or MDT")
}

voidClosure()

let names = ["ZZZZZZ", "BB", "CCCC", "A", "EEEEE"]

print(names.sorted())


let resultSortedNumbers = names.sorted { (firstValue, nextValue) -> Bool in
    print("FirstValue: \(firstValue), NextValue: \(nextValue)")
    return firstValue.count > nextValue.count
}

let resultSorted = names.sorted{$0.count > $1.count}

print(resultSorted)


let values = [1, 2, 3, 4, 5, 6]

values.forEach { (value) in
    print("Value is: \(value)")
}

values.forEach{ print("\($0) : \($0 * $0)")}
values.enumerated().forEach { (tupleValue) in
    print("\(tupleValue.offset) : \(tupleValue.element)")
}

values.enumerated().forEach{ print("\($0.offset) : \($0.element)") }

let prices = [1.5, 10.0, 4.99, 2.30, 8.19]
let largePrices = prices.filter{ $0 > 5}


print(largePrices)

let stringNumber2 = ["1", "2", "3", "4"]
let intNumber2 = stringNumber2.map { (value) -> Int in
    return Int(value)!
}

print(intNumber2)

let userInput2 = ["0", "11", "haha", "42"]
let numbers3 = userInput2.map{Int($0)}
let numbers4 = userInput2.compactMap{Int($0)}

print(numbers4)


let userInput = ["1", "2", "3", "4", "jame"]
let intArray = userInput.compactMap{ Int($0)}

var resultWorkshop1: Int = 0
intArray.forEach{ resultWorkshop1 = resultWorkshop1 + $0 }

print(resultWorkshop1)

let months = ["January",
"February",
"March",
"April",
"May",
"June",
"July",
"August",
"September",
"October",
"November",
"December"]

//let largeMonth = months.filter{$0.count > 5}

//print(largeMonth)

let sorted = months.sorted()

print(sorted)

var primeNumbers: [Int] = []

func isPrime(_ number: Int) -> Bool {
    if number == 1 { return false }
    
    if number == 2 || number == 3 {
        return true
    }
    
    for value in 2..<number {
        if number % value == 0 {
            return false
        }
    }
    
    return true
}

for value in 1...1000 {
    if isPrime(value) {
        primeNumbers.append(value)
    }
}

print(primeNumbers)
