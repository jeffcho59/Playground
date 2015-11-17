//: Playground - noun: a place where people can play

import UIKit

var webster: [String: String] = ["krill": "any of the small crustaceans", "fire": "a burning mass of material"]

var anotherDictionary: [Int: String] = [44: "My fav number", 32: "My worst number"]

if let krill = webster["krill"] {
    print(krill)
}

webster = [:]

if webster.isEmpty {
    print("Our dictionary is empty")
}

var highScore: [String: Int] = ["Spentak": 401, "playa": 200, "player2": 500]

print(highScore["player2"])

for (user, score) in highScore {
    print("\(user): \(score)")
}

highScore["newplayer"] = 2

for (user, score) in highScore {
    print("\(user): \(score)")
}
