import UIKit
//Задание 1
protocol CalorieCountProtocol {
     var calories: Int { get }
     func description() -> String
}

class SomeFood: CalorieCountProtocol {
    var calories: Int
    
    init(calories: Int) {
        self.calories = calories
    }
    
    func description() -> String {
        return "Еда. Калорий - \(calories)"
    }
}


let food = SomeFood(calories: 100)

print(food.description())


//Задание 2
enum BalanceType {
    case positive, negative, neutral
}

struct Balance: Equatable {
    let type: BalanceType
    let amount: Int
    
}

struct BalanceObject: Equatable {
    static func == (lhs: BalanceObject, rhs: BalanceObject) -> Bool {
        return lhs.amount == rhs.amount
    }
    
    var amount: Int = 0
    
    init(amount: Int) {
        self.amount = amount
    }
}

let structBalance1 = Balance(type: BalanceType.negative, amount: 10)
let structBalance2 = Balance(type: BalanceType.neutral, amount: 20)
structBalance1 == structBalance2

let classBalanceObject1 = BalanceObject(amount: 10)
let classBalanceObject2 = BalanceObject(amount: 10)
classBalanceObject1 == classBalanceObject2

//Задание 3
protocol Dog {
    var name: String { get set }
    var color: String { get set }
}

extension Dog {
    func speak() -> String {
        return "Woof"
    }
}

struct Haski: Dog {
    var name: String
    var color: String
}

class Corgi: Dog {
    var name: String
    var color: String

    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
}

struct Hound: Dog {
    var name: String
    var color: String
}


let dog1 = Corgi(name: "dog1", color: "white")
dog1.speak()

let dogs: [Dog] = [Corgi(name: "dog1", color: "white"), Haski(name: "dog2", color: "black"), Hound(name: "dog3", color: "Brown")]

for dog in dogs {
    print(dog.speak())
}

