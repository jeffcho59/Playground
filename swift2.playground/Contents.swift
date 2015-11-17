//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//test float
let test: Float = 4

//conversion | the error is that + can't apply to String and Int if String() is removed
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//use \() to include a floating-point calculation in a string and to include someone's name in a greeting
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit"

//array
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

//dictionary
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
    ]
occupations["Jayne"] = "Public Relations"

//Empty Array
let emptyArray = [String]()
//Empty Dictionary
let emptyDictionary = [String: Float]()

//if type information can be inferred, you can write an empty array as [] and empty dictionary as [:]
shoppingList = []
occupations = [:]

//if statement is Boolean. if score {..} is an error
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

//if var optionalName: String? = nil, then it would print Hello!!
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello!!"
}

// (a ?? b) unwraps an optional a if it has a value or returns a default value of b if a is nil. the expression a is always of an optional type. the expression b must match the type that is stored inside a
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"


//you need a default case for switches
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants in a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}


//use for-in to iterate over items in a dictionary by providing a pair of names to use for each key-value pair. dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order.
let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25]
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)

//while and repeat loops
var n = 2
while n < 100 {
    n = n * 2
}
print (n)

var m = 2
repeat {
    m = m * 2
} while m < 100

print(m)

//index in a loop. for loop
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}

print(firstForLoop)

var secondForLoop = 0
for var i=0; i<4; i++ {
    secondForLoop += i
}

print(secondForLoop)

//function
func greet(name: String, lunch: String) -> String {
    return "Hello \(name), today's lunch special is \(lunch)."
}

greet("Bob", lunch: "Steak")


//use tuple to make a compound value - for example, to return multiple values from a function
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores [0]
    var max = scores [0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics([5,3,100,3,9])
print(statistics.sum)
print(statistics.2)

//functions take a variable number of arguments, collecting them in an array
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf()
sumOf(42, 597, 12)

func avgOf(numbers: Int...) -> Int {
    if numbers.count == 0 {
        return 0
    }
    
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum/numbers.count
}

avgOf(5, 10, 15)

//fucntion nested in a function
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

returnFifteen()

//functions are a first=class type. function can return another function as it's value
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrementer()
increment(7)

