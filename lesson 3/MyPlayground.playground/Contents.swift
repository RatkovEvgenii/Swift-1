import Foundation

enum carAction {
    case startEngine
    case stopEngine
    case openWindows
    case closeWindows
    case loadCargo
    case unloadCargo
}

struct SportCar {
    let brand: String
    let year: Int
    var trunkVolume: Int
    var isEngineWork: Bool
    var isTruckFull: Bool
    var isWIndowsOpen: Bool
    
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
        case .loadCargo:
            isTruckFull = true
        case .unloadCargo:
            isTruckFull = false
        
        }
    }
    
    func info() {
        print("Car brand is \(brand), year is \(year), is trunk full \(isTruckFull), is engine work \(isEngineWork), is windows open  \(isWIndowsOpen)")
    }
}

struct TrunkCar {
    let brand: String
    let year: Int
    var trunkVolume: Int
    var isEngineWork: Bool
    var isTruckFull: Bool
    var isWIndowsOpen: Bool
    
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
        case .loadCargo:
            isTruckFull = true
        case .unloadCargo:
            isTruckFull = false
        
        }
    }
    
    func info() {
           print("Car brand is \(brand), year is \(year), is trunk full \(isTruckFull), is engine work \(isEngineWork), is windows open  \(isWIndowsOpen)")
       }
}

var car1 = SportCar(brand: "Aston Martin", year: 2012, trunkVolume: 300, isEngineWork: true, isTruckFull: false, isWIndowsOpen: true)
var car2 = SportCar(brand: "Ferrari", year: 2005, trunkVolume: 100, isEngineWork: false, isTruckFull: true, isWIndowsOpen: true)
var car3 = TrunkCar(brand: "Volvo", year: 2015, trunkVolume: 1200, isEngineWork: true, isTruckFull: true, isWIndowsOpen: false)
car1.info()
car2.info()
car3.info()
car2.Activity(carAct: .startEngine)
car3.Activity(carAct: .unloadCargo)
car2.info()
car3.info()
