import UIKit


//Задание 1, 2
struct Person {
    var name: String
    var age: Int
    var info: String {
        if age%10 == 1 {
            return "\(name) \(age) год"
        }
        else if age%10 == 0 {
            return "\(name) \(age) лет"
        }
        else if age%10 > 1 && age%10 < 5 {
            return "\(name) \(age) года"
        }
        else if age%10 > 4 {
            return "\(name) \(age) лет"
        }
        else {
            return ""
        }
    }
 
    func getAgeComparisonString(_ p: Person) -> String {
        if self.age > p.age {
            return "\(self.name) старше, чем \(p.name)"
        }
        else if self.age < p.age {
            return "\(self.name) младше, чем \(p.name)"
        }
        else {
            return "\(self.name) такого же возраста, как и \(p.name)"
        }

    }
}

let p1 = Person(name: "Антон", age: 10)
let p2 = Person(name: "Андрей", age: 21)
let p3 = Person(name: "Ольга", age: 21)

p1.getAgeComparisonString(p2)
p2.getAgeComparisonString(p1)
p3.getAgeComparisonString(p2)
p1.info

//Задание 3,4,5
class Hero {
    private var lifeCount: Int
    var isLive: Bool {
        if lifeCount > 0 {
            return true
        }
        else {
            return false
        }
    }
    
    func hit() -> Void {
        self.lifeCount = self.lifeCount - 2
    }
    
    init(lifeCount: Int) {
        self.lifeCount = lifeCount
    }
}

let h1 = Hero(lifeCount: 2)
h1.hit()
h1.hit()
h1.isLive

//Задание 6
class SuperHero : Hero {
    override func hit() -> Void {
    }
}

let h2 = SuperHero(lifeCount: 1)

h2.hit()
h2.isLive



