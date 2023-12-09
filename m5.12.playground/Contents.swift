import UIKit

// Задание 1
func transformWholeNumb(countArray: Int) -> [Int] {
    var oldArray: [Int] = []
    for _ in 1...countArray {
        oldArray.append(Int.random(in: -10...10))
    }
    var newArray = oldArray.map{
        if $0 < 0 {
            return 0
        }
        return $0
    }
   newArray.sort{
        $0 < $1
    }
    return newArray
}
print(transformWholeNumb(countArray: 10))

// Задание 2
func reverseArray(array: [Int]) -> [Int] {
    let newArray = array.reversed()
    return Array(newArray)
}
print(reverseArray(array: [1,3,5,6,7,89,1]))

// Задание 3
let checkMonth: (Int) -> Void = {number in
    switch number {
    case 1:
        print("Январь")

    case 2:
        print("Февраль")

    case 3:
        print("Март")
        
    case 4:
        print("Апрель")
        
    case 5:
        print("Май")
        
    case 6:
        print("Июнь")
        
    case 7:
        print("Июль")
        
    case 8:
        print("Август")
        
    case 9:
        print("Сентябрь")
        
    case 10:
        print("Октябрь")
        
    case 11:
        print("Ноябрь")
        
    case 12:
        print("Декабрь")

    default:
        print("Такого месяца не бывает")
    }
}

func monthClosure(number: Int, closure: (Int) -> Void) {
    closure(number)
}

monthClosure(number: 1, closure: checkMonth)

// Задание 4
func arrayClosure(array: [Int], closure: (Int) -> Void) {
    if array.count == 0 {
        print("Месяцев нет")
    }
    else {
        array.forEach{
            closure($0)
        }
    }
}

arrayClosure(array: [], closure: checkMonth)

// Задание 5
var fruits: Set<String> = []
fruits.formUnion(["orange", "apple", "banana", "grapefruit"])
var redFood: Set<String> = ["apple", "tomato", "grapefruit", "strawberry"]

let redFruit = fruits.intersection(redFood)
print(redFruit)
let redFoodNoFruit = redFood.subtracting(fruits)
print(redFoodNoFruit)
let allFoodNoRedFruit = fruits.union(redFood).subtracting(redFruit)
print(allFoodNoRedFruit)

// Задание 6


// №1
func uniqWithSet(array: [Int]) -> [Int] {
    let arrayToSet = Set(array)
    return Array(arrayToSet)
}

let uniqArrayWithSet = uniqWithSet(array: [1,1,1,3,5,6,6,7])
print(uniqArrayWithSet)

// №2
func uniqWithContains(array: [Int]) -> [Int] {
    var uniqArray: [Int] = []
    array.forEach{numb in
        if !uniqArray.contains(numb) {
            uniqArray.append(numb)
        }
    }
    return uniqArray
}

let uniqArrayWithContains = uniqWithContains(array: [1,1,1,3,5,6,6,7])
print(uniqArrayWithContains)
