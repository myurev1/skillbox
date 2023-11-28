import UIKit


// Задание 1
func nextNumber(number: Int) -> Int {
    return number+1
}

let resultNextNum = nextNumber(number: 5)
print(resultNextNum)


//Задание 2
func getSquare(number: Int) -> Int {
    return number * number
}

let resultGetSquare = getSquare(number: 3)
print(resultGetSquare)


//Задание 3
func getTime(seconds: Int) -> (minutes: Int, seconds: Int) {
    let getSec = seconds%60
    let getMin = (seconds - getSec)/60
    return (getMin, getSec)
}

let resultGetTime = getTime(seconds: 1400)
print("\(resultGetTime.minutes) мин. \(resultGetTime.seconds) сек.")


//Задание 4
func concatString(string1: String, string2: String) -> String {
    return string1 + string2
}

let string1 = "Writing Swift code "
let string2 = "is interactive and fun"

let resultConcatString = concatString(string1: string1, string2: string2)
print(resultConcatString)

//Задание 5
func getDate(stringDate: String) -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    dateFormatter.locale = Locale(identifier: "MSK")
    let date = dateFormatter.date(from:stringDate)!
    return date
}

let resultGetDate = getDate(stringDate: "2004-11-23")
print(resultGetDate)
