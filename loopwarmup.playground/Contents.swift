//: Playground - noun: a place where people can play

import UIKit

var booYa = [String]()

for var x = 1; x<201; x++ {
    booYa.append(String(x))
    if x % 3 == 0{
        booYa.insert("Boo", atIndex: x)
    } else if x % 5 == 0 {
        booYa.insert("Ya", atIndex: x)
    } else if x % 3 == 0 && x % 5 == 0 {
        booYa.insert("BooYa", atIndex: x)
    }
}

print (booYa)
