//: Playground - noun: a place where people can play

import UIKit

//hey this is an optional and idk if it's going to have a value or not
var lotteryWinnings: Int?

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

lotteryWinnings = 100

if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

var vehicle: Car?


//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}
//

//hey print this but if nothing comes out, it's okay because it was an optional
print(vehicle?.model)

//this gives an error because of !
//print(vehicle!.model)

vehicle = Car()
vehicle?.model = "Bronco"

if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?

cars = [Car]()

//if let carArr = cars {
//    if carArr.count > 0 {
//        
//    }
//}

//only execute if not nil and if more than 0 elements
if let carArr = cars where carArr.count > 0 {
    
} else {
    cars?.append(Car())
    print(cars?.count)
}

//if line 47 didn't exist, nothing would print. it would give nil

//implicitly unwrapped optional


//! means it must be there. I'm going to put it there later. Errors come out later because you never put anything in there
class Person {
    private var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 15
        }
        
        return _age
    }
}

var jack = Person()
//error because it's nill and you're guaranteeing a value
//print(jack._age)
print(jack.age)

class Dog {
    var species: String
    
    //constructor
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)

//if you don't know if you're going to have a value, use (?) an optional
//if you know your variable is going to have a value and you're going to but gona give it later, use !
//otherwise just use regular variable with an initializer (init)

