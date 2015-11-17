//: Playground - noun: a place where people can play

import UIKit

var names = ["Jon", "Jacob", "Jingle", "Heimer", "Smith"]

var numbers = [44, 233, 12, 4]

var peopleHotOrNot = [true, false, true, false, false, false, false]

var mixed = ["John", 200, "30", true] //You can do this, but you shouldn't because there are different data types

var countries = [String]()

var top3Colors = [String](count: 3, repeatedValue: "Boring Brown")

top3Colors[0] = "Blue"
top3Colors[1] = "Red"
top3Colors[2] = "Black"

var aName = names[4]

var faveCars = [String]()
faveCars.append("BMW M3")
faveCars.append("Audi S7")
faveCars.append("Ford Pinto")

faveCars.removeAtIndex(2)

faveCars.append("1969 Chevy Camaro")

faveCars.insert("Nissan GTR", atIndex: 0)

//var aCar = faveCars[10] //Error because calling a value that's nonexistant

var shoppingCart = [String]()
var budget = 500.0
var currentCartAmount = 0.0

func addItemToCart(item: String, price: Double) {
    if currentCartAmount + price <= budget {
        shoppingCart.append(item)
        currentCartAmount += price
    } else {
        print("Not enough monies")
    }
}

addItemToCart("Final Fantasy X / X2", price: 50.25)
print(currentCartAmount)
addItemToCart("Bleach", price: 3.45)
print(currentCartAmount)
addItemToCart("Couch", price: 150.72)
print(currentCartAmount )

addItemToCart("PS4", price: 300)
print(currentCartAmount)

print(shoppingCart)


