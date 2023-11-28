import UIKit


//Задание 1
func checkEqual(number1: Int, number2: Int) -> String {
    if number1 == number2 {
        return "равно"
    }
    else if number1 > number2 {
        return "больше"
    }
    else {
        return "меньше"
    }
}

let getEqual = checkEqual(number1: 30, number2: 20)
print(getEqual)


//Задание 2
func summ(toValue: Int) -> Int {
    var valSum = 0
    for number in 1...toValue {
        if number%2 == 0 {
            continue
        }
        else if number%2 > 0 {
            valSum=valSum + number
        }
    }
    return valSum
}

let getSumm = summ(toValue: 10)
print(getSumm)


//Задание 3
func squereNumber(number: Int) {
    for numb in 1...number {
        if numb*numb > number {
            break
        }
        else {
            print(numb)
        }
    }
}
squereNumber(number: 10)


//Задание 4
func handleDiceRoll(result: Int) {
    switch result {
    case 1,2,3:
        print("проигрыш")
    case 4,5,6:
        print("победа")
    default:
        break
    }
}

handleDiceRoll(result: 6)

