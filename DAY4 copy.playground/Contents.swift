import UIKit

var name = "Shahad"
var birthdayyear = 2006
var age : Int

var currentyear = 2022

age = currentyear - birthdayyear

 print("Hello My Name Is \(name) And Im \(age) ")

if age >= 14 && age <= 18
{
    print("تستطيع المشاركة في الكويت تبرمج!😍")
}
    else{
        print("لا تستطيع المشاركة في الكويت تبرمج..☹️")
    }


var textname = "8"
var number = 4
var doublenumber : Double

doublenumber = (Double(textname) ?? 0 ) + Double(number)
