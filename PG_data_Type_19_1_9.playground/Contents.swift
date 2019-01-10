//: Playground - noun: a place where people can play

import UIKit

print("Hello world")

var myVar = 42
myVar = 50

let myConstant:Int
//can not reassign a value to a constant
//myConstant = 100

//co 2 cach de khai bao bien
//cach 1: mot la khai bao bien va gia tri 1 lan
//cach 2: hai la khai bao bien, khong can gia tri khoi tao

//cach 1
var c1Var:Int = 2
//cach 1: khi gan gia tri khoi tao ban dau, ta co the bo kieu du lieu cung duoc. kieu du lieu se duoc suy ra tu gia tri
var c1Var2 = 3
//tuong tu voi let
let c1Let:String = "String 1"
let c1Let2 = "String 2"

//cach 2
var c2Var:Int
//tuong tu voi let
let c2Let:String
//khi dung cach 2. ta phai bat buoc khai bao kieu du lieu ban dau cho bien
//noi tom lai: Variable phai duoc xac dinh kieu du lieu ngay ban dau. (Kieu du lieu do co the duoc khai bao tuong minh or duoc suy ra tu gia tri khoi tao.
let myLet:Float = 4

//convert variable type
//bien khong tu chuyen doi kieu du lieu. phai tu ep kieu explicitly
var stringType = "Hello "
var intType = 10
var sayHello = stringType + String(intType)

//include a value in string
var oranges = 8
var apples = 2
var orangesSummary = "I have \(oranges) oranges"
var fruitSummary = "I have \(oranges + apples) pieces of fruit"

//string multiple line
let multipleString = """
        how are you today
        I am fine
            thanks
        """

//ARRAY
//co 2 cach de khai bao array
//cach 1: khai bao ten bien va gia tri khoi tao
//cach 2: khai bao empty array

//cach 1
var myArray = ["apple", "orange", "mango"]
//no tu suy ra day la string array
//append new item
myArray.append("kiwi")
//vi no la string array nen khong the append phan tu kieu INT vao duoc
//myArray.append(10)
//in ra cac phan tu trong array
print(myArray)

//cach 2
//tao ra empty array
var myEmptyArray = [String]()
myEmptyArray.append("Rose")
myEmptyArray.append("Cactus")
myEmptyArray.append("cho de")
print(myEmptyArray)
print(myEmptyArray[0])
//day la mot cach dung khac, de tao ra 1 empty array. chu y: phai khai bao mang truoc, roi moi dung cu phap [] duoc
var myEmptyArray2 = [Int]()
myEmptyArray2.append(12)
myEmptyArray2.append(45)
print(myEmptyArray2)
//empry array da co du lieu
myEmptyArray2 = []
print(myEmptyArray2)
//lam nhu sau la loi ngay. vi kieu du lieu ban dau la Int
//myEmptyArray2.append("string 1")

//Noi tom lai: array cung can xac dinh kieu du lieu ban dau nhu ai. Tu khai bao kieu du lieu or duoc infer ra.

//DICTIONARY
//tuong tu ARRAY, DICTIONARY cung co 2 cach khai bao
//cach 1: khai bao bien va gia tri khoi tao
//cach 2: khai bao empty dictionary

//cach 1
var myDictionary = ["key1" : 12, "key2" : 22]
myDictionary["key3"] = 99
print(myDictionary["key3"]!)
print(myDictionary)

//cach 2
//tao ra empty dictionary
var myEmptyDictionary = [String : Int]()
myEmptyDictionary["k1"] = 12
myEmptyDictionary["k2"] = 99
print(myEmptyDictionary)
//ta cung co the dung cach nay
//nhung luu y la van phai khai bao kieu du lieu truoc
var myEmptyDictionary2 = [String : Int]()
myEmptyDictionary2["k1"] = 12
myEmptyDictionary2["k2"] = 88
print(myEmptyDictionary2)
//cach nay dung de empty dictionary truoc day da co du lieu
myEmptyDictionary2 = [:]
print(myEmptyDictionary2)

//Noi tom lai, ARRAY hay DICTONARY cung phai duoc khai bao kieu du lieu ban dau. giong nhu variable hay la let
