typealias Speed = Double

extension Speed {
  
  var kph: Speed { return self * 1.60934}
  var mph: Speed { return self}
}

protocol Vehicle {
  
  var topSpeed: Speed { get }
  var numberOfDoors: Int { get}
  var hasFlatbed: Bool { get }
  
}

struct Car {
  let make: String
  let model: String
  let year: Int
  let color: String
  let nickName: String
  var numberOfDoors: Int
  var gasLevel: Double {
    willSet {
      precondition(newValue <= 1.0 && newValue >= 0.1, "New Value must be between 0 and 1")
    }
  }
}

extension Car: Vehicle {
  
  var topSpeed: Speed {
    return 180
  }
  
  var hasFlatbed: Bool {
    return false
  }
  

}

extension Car {
  init(make: String, model: String, year: Int) {
    self.init(make: make, model: model, year: year, color: "Black", nickName: "pinky", numberOfDoors:2, gasLevel: 1.0)
  }
}

var c = Car(make: "Nissan", model: "Rouge", year: 2016)

extension Car {
  enum Kind {
    case coupe, sedan
  }
  
  var kind: Kind {
    if numberOfDoors == 2 {
      return .coupe
    } else {
      return .sedan
    }
  }
}

c.kind

print("\(c.kind)")

extension Car {
  mutating func emptyGas(by amount: Double) {
    precondition(amount<=1 && amount>0, "amount to remove must be between 0 and 1.")
    gasLevel -= amount
  }
  
  mutating func fillGas(){
    gasLevel = 1.0
  }
}

c.emptyGas(by: 0.3)
c.gasLevel
c.fillGas()
c.gasLevel


extension Int {
  
  var timesFive: Int {
    return self * 5
  }
  
}

var i:Int = 5
i.timesFive
6.timesFive
