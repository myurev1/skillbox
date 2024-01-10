import UIKit

enum listAnimal {
    case animal
    case bird
    case fish
    case dog
    
    func getName() -> String{
        switch self {
        case .animal:
            return "животного"
        case .bird:
            return "птицы"
        case .fish:
            return "рыбы"
        case .dog:
            return "собаки"
        }
    }
    
    func getAction() -> String{
        switch self {
        case .animal:
            return "передвигается"
        case .bird:
            return "летит"
        case .fish:
            return "плывет"
        case .dog:
            return "бежит"
        }
    }
}




//Задание 1
class Animal {
    private var energy: Int
    private var weight: Int
    private var currentAge: Int
    private var maxAge: Int
    private var name: String
    private var checkMove: Bool?
    fileprivate var isTooOld: Bool {
        return currentAge >= maxAge
    }
    
    init(energy: Int, weight: Int, currentAge: Int, maxAge: Int, name: String) {
        self.energy = energy
        self.weight = weight
        self.currentAge = currentAge
        self.maxAge = maxAge
        self.name = name
    }
    
    private func tryIncrementAge() -> Void {
        if (Bool.random()) {
            currentAge = currentAge + 1
        }
    }
    
    fileprivate func getType() -> String {
        let typeAnimal = listAnimal.animal
        return typeAnimal.getName()
    }
    
    fileprivate func getMove() -> String {
        let moveAnimal = listAnimal.animal
        return moveAnimal.getAction()
    }
    
    func sleep() -> Void {
        if (isTooOld == false) {
            energy = energy + 5
            currentAge = currentAge + 1
            print("\(name) спит")
        }
    }
    
    func eat() -> Void {
        if (isTooOld == false) {
            energy = energy + 3
            weight = weight + 1
            tryIncrementAge()
            print("\(name) ест")
        }
    }
    func move() -> Void {
        if (isTooOld == false && energy - 5 >= 0 && weight - 1 >= 0) {
            energy = energy - 5
            weight = weight - 1
            tryIncrementAge()
            print("\(name) \(getMove())")
            checkMove = true
        }
        else {
            checkMove = false
        }
    }
    
    fileprivate func getBirthСhildСharacteristics() -> [String: String]{
        var type = getType()
        var childEnergy = Int.random(in: 1...10)
        var childWeight = Int.random(in: 1...5)
        var childCurrentAge = 0
        var childMaxAge = maxAge
        var childName = name
        print("Рождение \(type). Характеристики - энергия: \(childEnergy), вес: \(childWeight), возраст: \(childCurrentAge), максимальный возраст: \(childMaxAge), имя: \(childName)")
        return ["childEnergy": "\(childEnergy)", "childWeight": "\(childWeight)", "childCurrentAge": "\(childCurrentAge)", "childMaxAge": "\(childMaxAge)", "childName": "\(childName)"]
    }
    
    
    
    func birthAnimal() -> Animal {
        let childСharacteristics = getBirthСhildСharacteristics()
        return Animal(energy: Int(childСharacteristics["childEnergy"]!)!, weight: Int(childСharacteristics["childWeight"]!)!, currentAge: Int(childСharacteristics["childWeight"]!)!, maxAge: Int(childСharacteristics["childWeight"]!)!, name: childСharacteristics["childName"]!)
    }
}

class Bird: Animal {
    
    override func getType() -> String {
        let typeAnimal = listAnimal.bird
        return typeAnimal.getName()
    }
    
    override func getMove() -> String {
        let moveAnimal = listAnimal.bird
        return moveAnimal.getAction()
    }
    
    override func birthAnimal() -> Animal {
        let childСharacteristics = getBirthСhildСharacteristics()
        return Bird(energy: Int(childСharacteristics["childEnergy"]!)!, weight: Int(childСharacteristics["childWeight"]!)!, currentAge: Int(childСharacteristics["childWeight"]!)!, maxAge: Int(childСharacteristics["childWeight"]!)!, name: childСharacteristics["childName"]!)
    }
}

class Fish: Animal {
    
    override func getType() -> String {
        let typeAnimal = listAnimal.fish
        return typeAnimal.getName()
    }
    
    override func getMove() -> String {
        let moveAnimal = listAnimal.fish
        return moveAnimal.getAction()
    }
    
    override func birthAnimal() -> Animal {
        let childСharacteristics = getBirthСhildСharacteristics()
        return Bird(energy: Int(childСharacteristics["childEnergy"]!)!, weight: Int(childСharacteristics["childWeight"]!)!, currentAge: Int(childСharacteristics["childWeight"]!)!, maxAge: Int(childСharacteristics["childWeight"]!)!, name: childСharacteristics["childName"]!)
    }
}

class Dog: Animal {
    
    override func getType() -> String {
        let typeAnimal = listAnimal.dog
        return typeAnimal.getName()
    }
    
    override func getMove() -> String {
        let moveAnimal = listAnimal.dog
        return moveAnimal.getAction()
    }
    
    override func birthAnimal() -> Animal {
        let childСharacteristics = getBirthСhildСharacteristics()
        return Bird(energy: Int(childСharacteristics["childEnergy"]!)!, weight: Int(childСharacteristics["childWeight"]!)!, currentAge: Int(childСharacteristics["childWeight"]!)!, maxAge: Int(childСharacteristics["childWeight"]!)!, name: childСharacteristics["childName"]!)
    }
}

class NatureReserve {
    var animal: [Animal]
    
    init(animal: [Animal]) {
        self.animal = animal
    }
    func removeAnimal(myanimal: Animal) -> Void {
        if let indexAnimal = animal.firstIndex(where: { $0 === myanimal }) {
            animal.remove(at: indexAnimal)
        }
    }
    
    func addAnimal(myanimal: Animal) -> Void{
        animal.append(myanimal)
    }
}
 


func startLife(duration: Int) -> Void {
    let natureReserve = NatureReserve(animal: [Bird(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "bird1"),
                                               Bird(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "bird2"),
                                               Bird(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "bird3"),
                                               Bird(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "bird4"),
                                               Bird(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "bird5"),
                                               Fish(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "fish1"),
                                               Fish(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "fish2"),
                                               Fish(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "fish3"),
                                               Dog(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "dog1"),
                                               Dog(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "dog2"),
                                               Animal(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "animal1"),
                                               Animal(energy: 10, weight: 20, currentAge: 3, maxAge: 6, name: "animal2"),])
    for _ in 1...duration {
        for animal in natureReserve.animal {
            let randAction = Int.random(in: 1...4)
            if randAction == 1 {
                animal.eat()
            }
            else if randAction == 2 {
                animal.move()
            }
            else if randAction == 3 {
                animal.sleep()
            }
            else if randAction == 4 {
                natureReserve.addAnimal(myanimal: animal.birthAnimal())
                print("Пополнение в заповеднике. Теперь в заповеднике \(natureReserve.animal.count) животных")
            }
            if animal.isTooOld {
                natureReserve.removeAnimal(myanimal: animal)
                print("Животное постарело и удалено. Теперь в заповеднике \(natureReserve.animal.count) животных")
            }
        }
    }
    if natureReserve.animal.count > 0 {
        print("В заповеднике \(natureReserve.animal.count) животных")
    }
    else {
        print("В заповеднике нет животных")
    }
}

startLife(duration: 20)



