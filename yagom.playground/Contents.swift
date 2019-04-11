import UIKit

//1강 이름짓기,콘솔로그,문자열 보간법
let age: Int = 10

"안녕하세요! 저는 \(age)살입니다"
// == "안녕하세요! 저는 10살입니다"

"안녕하세요! 저는 \(age + 5)살입니다"
// == "안녕하세요! 저는 15살입니다"

print("안녕하세요! 저는 \(age + 5)살입니다")

print("\n########################\n")

class Person {
    var name: String = "yagom"
    var age: Int = 10
}

let yagom: Person = Person()

print(yagom)

print("\n########################\n")

dump(yagom)


//2강 상수와 변수

// 상수, 변수의 선언
// 상수 선언 키워드 let
// 변수 선언 키워드 var

// 상수의 선언
// let 이름: 타입 = 값

// 변수의 선언
// var 이름: 타입 = 값

// 값의 타입이 명확하다면 타입은 생략 가능
// let 이름 = 값
// var 이름 = 값

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
//constant = "상수는 차후에 값을 변경할 수 없습니다" // 오류 발생

// 상수 선언 후에 나중에 값 할당하기

// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 합니다
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB

// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없습니다, 오류 발생

// 변수도 물론 차후에 할당하는 것이 가능합니다
var nickName: String

nickName = "yagom"

// 변수는 차후에 다시 다른 값을 할당해도 문제가 없지요
nickName = "야곰"


//3강 기본 데이터 타입

// Bool
var someBool: Bool = true
someBool = false

// Int
var someInt: Int = -100

// UInt
var someUInt: UInt = 100

// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3

// Character
var someCharacter: Character = "🇰🇷"
someCharacter = "😄"
//someCharacter = "가"
//someCharacter = "A"
print(someCharacter)

// String
var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)


// 5강 Any,AnyObject,nil

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
*/

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

//let someDouble: Double = someAny



//MARK: - AnyObject

class someClass {}

var someAnyObject: AnyObject = someClass()

//someAnyObject = 123.12



//MARK: - nil

//someAny = nil
//someAnyObject = nil


//6강 컬렉션 타입(Array, Dictionary, Set)

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
*/


//MARK: - Array

// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(101.1)

integers.contains(100)
integers.contains(99)

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count

//integers[0]

// Array<Double>와 [Double]는 동일한 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
// []는 새로운 빈 Array
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]

//immutableArray.append(4)
//immutableArray.removeAll()



//MARK: - Dictionary

// key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

anyDictionary["someKey"] = "dictionary"
anyDictionary


anyDictionary.removeValue(forKey: "anotherKey")

anyDictionary["someKey"] = nil
anyDictionary

let emptyDictionary: [String: String] = [:]
let initializedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

//emptyDictionary["key"] = "value"

//let someValue: String = initializedDictionary["name"]



//MARK: - Set

// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

integerSet
integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count


let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)

let sortedUnion: [Int] = union.sorted()

let intersection: Set<Int> = setA.intersection(setB)

let subtracting: Set<Int> = setA.subtracting(setB)


// 7강 함수 기본

//MARK: - 함수의 선언

//MARK: 함수선언의 기본형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//    함수 구현부
//    return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}



//MARK: 반환 값이 없는 함수
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void {
//    함수 구현부
//    return
//}

func printMyName(name: String) -> Void {
    print(name)
}




//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) {
//    함수 구현부
//    return
//}

func printYourName(name: String) {
    print(name)
}




//MARK: 매개변수가 없는 함수
//func 함수이름() -> 반환타입 {
//    함수 구현부
//    return 반환값
//}

func maximumIntegerValue() -> Int {
    return Int.max
}



//MARK: 매개변수와 반환값이 없는 함수
//func 함수이름() -> Void {
//    함수 구현부
//    return
//}

func hello() -> Void { print("hello") }



//func 함수이름() {
//    함수 구현부
//    return
//}

func bye() { print("bye") }



//MARK: - 함수의 호출

sum(a: 3, b: 5) // 8

printMyName(name: "yagom") // yagom

printYourName(name: "hana") // yagom

maximumIntegerValue() // Int의 최댓값

hello() // heloo

bye() // bye



// 8강 함수 고급

//MARK: - 매개변수 기본값

// 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋습니다
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
//    함수 구현부
//    return 반환값
//
//}

func greeting(friend: String, me: String = "yagom") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 생략할 수 있습니다
greeting(friend: "hana") // Hello hana! I'm yagom
greeting(friend: "john", me: "eric") // Hello john! I'm eric


//MARK: - 전달인자 레이블

// 전달인자 레이블은 함수를 호출할 때
// 매개변수의 역할을 좀 더 명확하게 하거나
// 함수 사용자의 입장에서 표현하고자 할 때 사용합니다
//func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//    함수 구현부
//    return
//}

// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때에는 전달인자 레이블을 사용해야 합니다
greeting(to: "hana", from: "yagom") // Hello hana! I'm yagom


//MARK: - 가변 매개변수

// 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있습니다
// 가변 매개변수는 함수당 하나만 가질 수 있습니다

//func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
//    함수 구현부
//    return
//}

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "yagom", friends: "hana", "eric", "wing"))
// Hello ["hana", "eric", "wing"]! I'm yagom!

print(sayHelloToFriends(me: "yagom"))
// Hello []! I'm yagom!


/*
 위에 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능합니다
*/

//MARK: - 데이터 타입으로서의 함수

// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어입니다
// 스위프트의 함수는 일급객체이므로 변수, 사웃 등에 저장이 가능하고
// 매개변수를 통해 전달할 수도 있습니다

//MARK: 함수의 타입표현
// 반환타입을 생략할 수 없습니다
// (매개변수1타입, 매개변수2타입 ...) -> 반환타입

//var someFunction: (String, String) -> Void = greeting(to:from:)
//someFunction("eric", "yagom") // Hello eric! I'm yagom
//
//someFunction = greeting(friend:me:)
//someFunction("eric", "yagom")


// 타입이 다른 함수는 할당할 수 없습니다
//someFunction = sayHelloToFriends(me: friends:)

//func runAnother(function: (String, String) -> Void) {
//    function("jenny", "mike")
//}

// Hello jenny! I'm mike
//runAnother(function: greeting(friend:me:))

// Hello jenny! I'm mike
//runAnother(function: someFunction)



// 9강 조건문

let someInteger = 100

//MARK: - if-else

//if condition {
//    statements
//} else if condition {
//    statements
//} else {
//    statements
//}

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100

// 스위프트의 조건에는 항상 Bool 타입이 들어와야합니다
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
// 컴파일 오류가 발생합니다
//if someInteger { }

//MARK: - switch

//switch value {
//case pattern:
//    code
//default:
//    code
//}

// 범위 연산자를 활용하면 더욱 쉽고 유용합니다
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100

// 정수 외의 대부분의 기본 타입을 사용할 수 있습니다
switch "yagom" {
case "jake":
    print("jake")
    fallthrough
case "mina":
    print("mina")
case "yagom":
    print("yagom!!")
default:
    print("unknown")
} // yagom!!



// 10강 반복문

/* 반복문 */

var integers10 = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

//MARK: - for-in

//for item in items {
//    code
//}

for integer in integers10 {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
for (name, age) in people {
    print("\(name): \(age)")
}

//MARK: - while

//while condition {
//    code
//}

while integers10.count > 1 {
    integers10.removeLast()
}


//MARK: - repeat-while

//repeat {
//    code
//} while condition

repeat {
    integers10.removeLast()
} while integers10.count > 0



// 11강 옵셔널

var optionalValue: Int! = 10

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

var optionalValue2: Int? = 10

switch optionalValue2 {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}



// 12강 옵셔널 추출

// if-let
var myName: String? = "yagom"
var yourName: String? = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yourName이 nil이기 때문에 실행되지 않습니다

yourName = "hana"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

// Force unwrapping
func printName(_ name: String) {
    print(name)
}

var myName12: String? = "yagom"

printName(myName12!) // yagom

myName12 = nil

//print(myName!)
// 강제추출시 값이 없으므로 런타임 오류 발생

var yourName12: String! = nil

//printName(yourName)
// nil 값이 전달되기 때문에 런타임 오류발생



// 13강 구조체

//MARK: - 정의

//struct 이름 {
//    /* 구현부 */
//}

//MARK: 프로퍼티 및 메서드

struct Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let  immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드
    static func typeMethod() {
        print("type method")
    }
}

//MARK: 구조체 사용

// 가변 인스턴스
var mutable: Sample = Sample()

mutable.mutableProperty = 200
//mutable.immutableProperty = 200

// 불변 인스턴스
let immutable: Sample = Sample()

//immutable.mutableProperty = 200
//immutable.immutableProperty == 200

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method


//MARK: - 학생 구조체

struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("학생타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce() // 학생타입입니다

var yagom13: Student = Student()
yagom13.name = "yagom"
yagom13.class = "스위프트"

let jina13: Student = Student()

// 불변 인스턴스이므로 프로퍼티 값 변경 불가
// 컴파일 오류 발생
//jina.name = "jina"
jina13.selfIntroduce() // 저는 Swift반 unknown입니다



// 14강 클래스

//MARK: - 정의

class 이름 {
    /* 구현부 */
}

//MARK: 프로퍼티 및 메서드

class Sample14 {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
}

//MARK: 클래스 사용

var mutableReference: Sample14 = Sample14()

mutableReference.mutableProperty = 200
//mutableReference.immutableProperty = 200

let immutableReference: Sample14 = Sample14()

immutableReference.mutableProperty = 200
//immutableReference.immutableProperty = 200

//immutableReference = mutableReference


// 타입 프로퍼티 및 메서드
Sample14.typeProperty = 300
Sample14.typeMethod() // type method

//mutableReference.typeProperty = 400


//MARK - 학생 클래스

class Student14 {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
        print("학생타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student14.selfIntroduce() // 학생타입입니다

var yagom14: Student14 = Student14()
yagom14.name = "yagom"
yagom14.class = "스위프트"
yagom14.selfIntroduce()     // 저는 스위프트반 yagom입니다

let jina14: Student14 = Student14()
jina14.name = "jina"
jina14.selfIntroduce()    // 저는 Swift반 jina입니다



// 15강 열거형

//MARK: - 정의

//enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의합니다
//각 case는 소문자 카멜케이스로 정의합니다
//각 case는 그 자체가 고유의 값입니다

//enum 이름 {
//   case 이름1
//   case 이름2
//   case 이름3, 이름4, 이름5
//   ...
//}

//MARK: 열거형 사용
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon
day = .tue

print(day)

switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}


//MARK: - 원시값

//C언어의 enum처럼 정수값을 가질 수도 있습니다
//rawValue를 사용하면 됩니다
//case별로 각각 다른 값을 가져야합니다

enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
//    case mango = 0
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")
// Fruit.peach.rawValue == 2

//정수 타입 뿐만 아니라
// Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있습니다

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")

print("School.middle.rawValue == \(School.university.rawValue)")


//MARK: 원시값을 통한 초기화

//rawValue를 통해 초기화 할 수 있습니다
//rawValue가 case에 해당하지 않을 수 있으므로
//rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입입니다

//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
} // rawValue 5에 해당하는 케이스가 없습니다


//MARK: 메서드

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절!")
        case .dec, .jan, .feb:
            print("추운 겨울입니다")
        }
    }
}

Month.mar.printMessage()



// 16강 값 타입과 참조 타입

//MARK:- Class vs Struct/Enum

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property : \(firstStructInstance.property)")       // 1
print("second struct instance property : \(secondStructInstance.property)")     // 2


let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)")       // 2
print("second class reference property : \(secondClassReference.property)")     // 2
