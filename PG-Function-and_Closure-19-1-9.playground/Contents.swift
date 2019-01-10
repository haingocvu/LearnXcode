//: Playground - noun: a place where people can play

import UIKit

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}

greet(name: "Hai Vu", day: "Thu 5")

//No Label and Custom Label
func greet2(_ name: String, on day: String) -> String {
    return "xin chao ban \(name), hôm nay là \(day)"
}

greet2("Giang", on: "Thu 5")

//return multiple value
func calculateStatistics(numers: [Int]) -> (min: Int, max: Int) {
    var min = Int.max
    var max = Int.min
    for number in numers {
        if number < min {
            min = number
        } else if number > max {
            max = number
        }
    }
    return (min, max)
}

let calc = calculateStatistics(numers: [2, 4, 8, 12, 1, 100, 89, 90])

print(calc.max)
print(calc.min)

//nested function
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

//function return another function
func makeIncrementer() -> ((Int) -> Int) {
    func add(_ number: Int) -> Int {
        let rs = number + 1
        return rs
    }
    return add
}

makeIncrementer()(9)

//function nhan mot function khac lam tham so
func lessThanTen(_ number: Int) -> Bool {
    return number > 10
}

func hasAnyMatch(_ numbers: [Int], _ condition: (Int) -> Bool) -> Bool {
    for number in numbers {
        if condition(number) {
            return true
        }
    }
    return false
}

hasAnyMatch([12, 19, 18, 10, 8], lessThanTen)
