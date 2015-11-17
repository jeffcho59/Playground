//: Playground - noun: a place where people can play

import UIKit

var ages = [23, 25, 41, 51, 62]

for var x = 0; x < ages.count; x++ {
    var age = ages[x]
    if age >= 50 {
        print("You are 50 or older")
    }
}

