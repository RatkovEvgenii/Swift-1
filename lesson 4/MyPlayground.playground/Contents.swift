import Foundation

class Car {
    let brand: String
    let year: Int
    var isEngineWork: Bool
    var isWIndowsOpen: Bool
    init(brand: String, year: Int, isEngineWork: Bool, isWindowsOpen: Bool) {
        self.brand = brand
        self.year = year
        self.isWIndowsOpen = isWindowsOpen
        self.isEngineWork = isEngineWork
        
    }
    func info() {
        print("Car brand is \(brand), year is \(year), is engine work \(isEngineWork), is windows open  \(isWIndowsOpen)")
    }
    
}

class TrunkCar: Car {
    enum carAction {
        case startEngine
        case stopEngine
        case openWindows
        case closeWindows
        case loadCargo
        case unloadCargo
        
    }
    
    var trunkVolume: Int
    var isTruckFull: Bool
    init(brand: String, year: Int, isEngineWork: Bool, isWindowsOpen: Bool, trunkVolume: Int, isTruckFull: Bool){
        self.trunkVolume = trunkVolume
        self.isTruckFull = isTruckFull
        super.init(brand: brand, year: year, isEngineWork: isEngineWork, isWindowsOpen: isWindowsOpen)
    }
    
    func Activity (carAct: carAction) {
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
}

class SportCar: Car {
    enum carAction {
        case startEngine
        case stopEngine
        case openWindows
        case closeWindows
        case openDoor
        case closeDoor
    }
    var maxSpeed: Int
    var countOfSeads: Int
    var isOpenDoor: Bool
    
    init(brand: String, year: Int, isEngineWork: Bool, isWindowsOpen: Bool, maxspeed: Int,countOfSeads: Int, isOpenDoor: Bool ){
        self.maxSpeed = maxspeed
        self.countOfSeads = countOfSeads
        self.isOpenDoor = isOpenDoor
        super.init(brand: brand, year: year, isEngineWork: isEngineWork, isWindowsOpen: isWindowsOpen)
    }
    
    func Activity (carAct: carAction) {
    switch carAct {
    case .startEngine:
        isEngineWork = true
    case .stopEngine:
         isEngineWork = false
    case .openWindows:
        isWIndowsOpen = true
    case .closeWindows:
        isWIndowsOpen = false
    case .openDoor:
        isOpenDoor = true
    case .closeDoor:
        isOpenDoor = false
    
        }
    }
}

var Car1: SportCar = SportCar (brand: "Ferrary", year: 2015, isEngineWork: true, isWindowsOpen: false, maxspeed: 300, countOfSeads: 2, isOpenDoor: true)

var Car2: TrunkCar = TrunkCar(brand: "Volvo", year: 2000, isEngineWork: false, isWindowsOpen: true, trunkVolume: 1000, isTruckFull: false)

Car1.Activity(carAct: .openDoor)
Car2.Activity(carAct: .loadCargo)
