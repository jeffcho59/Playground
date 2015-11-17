//: Playground - noun: a place where people can play

import UIKit

//BLUEPRINT
class Vehicle {
    private var engine = "4 cylinder"
    private var color = "Silver"
    private var _odometer = 500
    
    //Getter / Setter (Accessors & Mutators) computed property
    var odometer: Int {
        get {
            return _odometer
        }
        set {
            if newValue > _odometer {
                _odometer = newValue
            }
        }
        
    }
    
    init(engine: String, color: String) {
        self.engine = engine
        self.color = color
    }
    
    init() {
        
    }
    
    func enterMiles(miles: Int) {
        odometer += miles
    }
}

var srx = Vehicle(engine: "6 cylinder", color: "blue")
var volvo = Vehicle()
var silverado = Vehicle()

var vehicles = [Vehicle]()
vehicles.append(volvo)
vehicles.append(silverado)
vehicles.append(srx)

print(srx.odometer)
srx.enterMiles(10400)
print(srx.odometer)


print(srx.color)
print(volvo.color)

