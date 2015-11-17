//: Playground - noun: a place where people can play

import UIKit

var oddNumbers = [Int]()
var sums = [Int]()

//this is a standard for loop
for var x=1; x<100; x++ {
    if x%2 != 0 {
    oddNumbers.append(x)
    }
}

//this is a for each loop
for this in oddNumbers {
    sums.append(this + 5)
}

//this is a repeat while loop
var x = 0;
repeat {
    print("The sum is: \(sums[x])")
    x++
} while x<sums.count;

print(sums)
