import Foundation

// 1. Структура Phone
struct Phone {
    var model: String
    var manufacturer: String
    var memory: Int?
    var operatingSystem: OperatingSystem?
    
    // 2. Метод структури для опису телефону
    func description() {
        print("Модель: \(model)")
        print("Виробник: \(manufacturer)")
        
        if let memory = memory {
            print("Пам'ять: \(memory) ГБ")
        } else {
            print("Пам'ять: не вказано")
        }
        
        if let os = operatingSystem {
            print("Операційна система: \(os.rawValue)")
        } else {
            print("Операційна система: не вказано")
        }
        print("----------------------------")
    }
}

// 5. Перерахування для операційних систем
enum OperatingSystem: String {
    case iOS = "iOS"
    case Android = "Android"
    case WindowsPhone = "Windows Phone"
}

// 2. Функція для опису телефону
func phoneDescription(phone: Phone) {
    print("Інформація про телефон:")
    print("Модель: \(phone.model)")
    print("Виробник: \(phone.manufacturer)")
    
    if let memory = phone.memory {
        print("Пам'ять: \(memory) ГБ")
    } else {
        print("Пам'ять: не вказано")
    }
    
    if let os = phone.operatingSystem {
        print("Операційна система: \(os.rawValue)")
    } else {
        print("Операційна система: не вказано")
    }
    print("============================")
}

// 3. Масив телефонів
let phones = [
    Phone(model: "iPhone 15", manufacturer: "Apple", memory: 256, operatingSystem: .iOS),
    Phone(model: "Galaxy S24", manufacturer: "Samsung", memory: 128, operatingSystem: .Android),
    Phone(model: "Lumia 950", manufacturer: "Nokia", memory: nil, operatingSystem: .WindowsPhone)
]

// Виведення за допомогою функції
for phone in phones {
    phoneDescription(phone: phone)
}

// Виведення за допомогою методу структури
for phone in phones {
    phone.description()
}

// 4. Клас User
class User {
    var name: String
    var phone: Phone?
    
    init(name: String, phone: Phone?) {
        self.name = name
        self.phone = phone
    }
    
    func showPhoneInfo() {
        print("Користувач: \(name)")
        if let phone = phone {
            print("Має телефон:")
            phone.description()
        } else {
            print("Телефон не вказано.")
        }
    }
}

// Приклад одного користувача
let user1 = User(name: "Ігор", phone: phones[0])
user1.showPhoneInfo()
