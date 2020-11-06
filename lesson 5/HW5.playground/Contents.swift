import Foundation

enum carAction {
           case startEngine
           case stopEngine
           case openWindows
           case closeWindows
}

protocol Car{
    var brand: String {get}
    var year: Int {get}
    var hp: Int {get}
    var isEngineWork: Bool {get set}
    var isWIndowsOpen: Bool {get set}
}

extension Car{
    mutating func Activity (carAct: carAction) {
         switch carAct {
         case .startEngine:
             isEngineWork = true
         case .stopEngine:
              isEngineWork = false
         case .openWindows:
             isWIndowsOpen = true
         case .closeWindows:
             isWIndowsOpen = false
        }
    }
}

class SportCar: Car{
    var brand: String
    var year: Int
    var hp: Int
    var isEngineWork: Bool
    var isWIndowsOpen: Bool
    var maxSpeed: Int
    init(brand: String, year: Int, isEngineWork: Bool, isWindowsOpen: Bool, hp: Int, maxSpeed: Int){
        self.hp = hp
        self.brand = brand
        self.year = year
        self.isWIndowsOpen = isWindowsOpen
        self.isEngineWork = isEngineWork
        self.maxSpeed = maxSpeed
        }
}

extension SportCar:CustomStringConvertible{
    var description: String {
        return "Car brand is \(brand), year is \(year), is engine work \(isEngineWork), is windows open  \(isWIndowsOpen), horse power is \(hp), max speed is \(maxSpeed)"
    }
}

class TrunkCar: Car{
    let brand: String
    let year: Int
    let hp: Int
    var isEngineWork: Bool
    var isWIndowsOpen: Bool
    var trunkVolume: Int
    init(brand: String, year: Int, isEngineWork: Bool, isWindowsOpen: Bool, hp: Int, trunkVolume: Int){
        self.hp = hp
        self.brand = brand
        self.year = year
        self.isWIndowsOpen = isWindowsOpen
        self.isEngineWork = isEngineWork
        self.trunkVolume = trunkVolume
    }
}

extension TrunkCar:CustomStringConvertible{
    var description: String {
        return "Car brand is \(brand), year is \(year), is engine work \(isEngineWork), is windows open  \(isWIndowsOpen), horse power is \(hp), tunk volume is \(trunkVolume)"
    }
}

var car1: SportCar = SportCar(brand: "VAZ", year: 1968, isEngineWork: false, isWindowsOpen: true, hp: 45, maxSpeed: 80)
var car2: TrunkCar = TrunkCar(brand: "Volvo", year: 2005, isEngineWork: true, isWindowsOpen: false, hp: 500, trunkVolume: 1000)
car1.Activity(carAct: .startEngine)
car2.Activity(carAct: .stopEngine)
print(car1)
print(car2)
