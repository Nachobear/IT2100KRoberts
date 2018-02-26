//: Playground - noun: a place where people can play

import UIKit

var Pi0: Int = 22/7
var Pi1: Float = 22/7
var Pi2: Double = 22/7

/* Each of the three variables above were assigned the value of 22/7 (approximately Pi) but all hold different values. The first Pi Variable was declared as an integer, which can only be a whole number, which is why everything to the right of the ones place was omitted. The second Pi variable was declared as a Float, which can hold fractional numbers but only up to a small number of decimal places, which is why only six of the decimal places were shown and the rest were omitted. The third Pi variable was declared as a Double, which allows for a ridiculous number of decimal places, which is why that version of 22/7 did not have to be rounded. */

class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    func decrement() {
        count -= 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func decrement(by amount: Int) {
        count -= amount
    }
    func reset() {
        count = 0
    }
    func getCount() -> Int {
        return count
    }
    func display() {
        print(getCount())
    }

}


var counter1 = Counter()
counter1.increment(by:7)
counter1.decrement()
counter1.decrement(by:3)
counter1.increment()
counter1.display()




func concatAll(names: [String], separator: String) -> String {
    var namesConcat = String()
    for name in names {
        namesConcat = namesConcat + name + separator
    }
    return namesConcat
}

var names = ["billy", "randy", "joe"]
//print(concatAll(names: names, separator: "xxx"))

var separator = "xxx"
var fullString = concatAll(names: names, separator: separator)
print (fullString)

for i in 0..<separator.characters.count {

fullString.characters.dropLast()
    }
print(fullString)

/* I could't get rid of the separator at the end of the string. I tried the following code but I don't know why it didn't work:
 

 for var i = 0 ; i < separator.characters.count ; i = i + 1 {
 namesConcat = (namesConcat.characters.dropLast())
 }
 
 I put it in right above "return namesConcat" in the "concatAll" func. I think it didn't work because the syntax has changed since the book was written. I'm not sure how to find the current versions. */
