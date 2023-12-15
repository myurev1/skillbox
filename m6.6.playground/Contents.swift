import UIKit
import Foundation

// Задание 1 

let days: [String: Int] = ["Monday": 1, "Tuesday": 2, "Wednesday": 3, "Thursday": 4, "Friday": 5, "Saturday": 6, "Sunday": 7]
// Задание 2
for day in days {
    print("\(day.key) - \(day.value)")
}
// Задание 3
var userData: [String: String] = [:]
userData["Alexey"] = "qwerty"
userData["Vanya"] = "qwerty2"
userData["Maksim"] = "qwerty3"

// Задание 4
enum CustomError: Error, LocalizedError {
    case invalidPassword
    case userNotFound
//    case invalidUsername(String, String)
    
    public var errorDescription: String? {
        switch self {
        case .invalidPassword:
            return "Неправильный пароль"
        case .userNotFound:
            return "Пользователь не найден"
//        case let .invalidUsername(name1, name2): что-то не особо понял как вернуть альтернативное значение.
        }
    }
}

// Задание 5
func checkUserData(user: String, password: String) throws {
        guard userData[user] != nil else {
            throw CustomError.userNotFound
        }
        guard userData[user] == password else {
            throw CustomError.invalidPassword
        }
}

//Задание 6
do {
    try checkUserData(user: "Maksim", password: "qwerty")
    print("Вход в систему успешно осуществлён")
} catch {
    print(error.localizedDescription)
}

if (try? checkUserData(user: "Maksim", password: "qwerty3")) != nil {
    print("Вход в систему успешно осуществлён")
}

