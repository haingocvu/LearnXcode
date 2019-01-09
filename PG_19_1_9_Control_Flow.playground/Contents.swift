//: Playground - noun: a place where people can play

import UIKit

var count = 0
var fruits = [String]()
fruits = ["orange", "apple", "kiwi"]
fruits.append("chumbao")
for fruit in fruits {
    print(fruit)
    if count <= 2 {
        count += 1
    } else {
        count += 2
    }
}
print(count)

//Chu y: khong the dung
//if 10 {
//
//}
//condition phai la boolean value
//true or false. khong phai nhu cac ngon ngu khac. swift chi nhan condition la true or false

//use if vs let together
//dung if vs let together de work voi optional value
var str:String?
//nhu vay cung la nil
//var str:String = nil
var greeting = "Hello"
if let name = str {
    greeting = "Hello \(name)"
} else {
    greeting = "Hello a Stranger"
}
print(greeting)

if str == nil {
    print("nil nha ba con")
}

//chu y: nil la reference, not value. ok.
//cach khac de work voi optional value
//su dung ?? de cung cap default value neu optional value == nil

var nickName:String?
//khong the su dung 1 bien neu ta chua initial cho no. o day ta khai bao nickName la optional value, do do ta co the su dung nickname o ben duoi. vi optional value duoc gan == nil mac dinh
//tuong tu nhu ta khai bao nhu sau
//var nickName2:String = nil
var fullName = "HAI VU"
var hello = "Hello \(nickName ?? fullName)"
print(hello)

//switch
var name1 = "Tony Teo"
switch name1 {
case "tony":
    print("Hello Tony")
case "Nam", "Thu":
    print("Hello vo chong Nam, Thu")
case let x where x.hasSuffix("Teo"):
    print("Hi Tony Teo nha")
default:
    print("Hello Nguoi La Nha")
}

//bat buoc phai co default

//su dung for in cho dictionary
//dictionary la unorder list.
//chua chac prime dung truoc square. co the nguoc lai.
var interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "fibonacci": [1, 1, 2, 3, 5, 8],
    "square": [1, 4, 9, 16, 25],
    "myNumber": [2, 5, 9, 24, 32, 52]
]
var largest = 0
for (type, values) in interestingNumbers {
    for value in values {
        if value > largest {
            largest = value
        }
    }
}
print(largest)

//WHILE
var num22 = 2
while num22 <= 100 {
    num22 *= 4
}
print(num22)

//REPEAT & WHILE
var y = 2
repeat {
    y += 10
} while y < 99
print(y)

//Su Dung ... va ..<
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

var z = 0
for i in 0...4 {
    z += i
}
print(z)

//Noi tom lai
//Sử dung ?? để cung cấp default vaue trong trường hợp biến có thể bị nil
//IF kha giong IF cua cac ngon ngu khac. Ngoai tru viec co the dung if let va conditon chi co the la true or false
//WHILE thi giong while ben cac ngon ngu khac. Ngoai tru conditon chi co the la true or false.
//REPEAT WHILE kha giong DO WHILE cua cac ngon ngu khac
//FOR IN kha giong cac ngon ngu khac. Ngoai tru viec ta co the dung closerange trong For
//SWITCH khá giống các ngôn ngữ khác, ngoài trừ việc ta không cần sử dụng break trong mỗi case, cũng như có thể sử dụng case let where
