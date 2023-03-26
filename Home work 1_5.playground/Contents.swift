import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */
var nr1: Float = 3.14
var nr2: Float = 42.0
var nr3: Double = Double(nr1 + nr2)
print(String(format: "%.2f", nr3))

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne: Int = 77
var numberTwo: Int = 11
var newConstantOne: Float = Float(numberOne / numberTwo)
var newConstantTwo: Float = Float(numberOne % numberTwo)
print("When dividing \(numberOne) by \(numberTwo), the result is \(newConstantOne), the remainder is \(newConstantTwo).")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var price = 1000
var Qty = 3
var totalSum: Int = (Qty * price)

if Qty >= 5 && Qty < 9 {
    print("You will have a discount! Pay 900Eur for each!")
} else if Qty >= 10 {
    print("You will have a discount! Pay 850Eur for each!")
}

print("new: \(Qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge: String?
userInputAge = "33a"
var convertIntoInt = Int(userInputAge ?? "0")
print(convertIntoInt)

if convertIntoInt == nil {
    print("converted \(convertIntoInt)")
} else {
    print("Cannot be converted")
}

if let ActualuserInputAge = Int(userInputAge ?? "0") {
    print("convertIntoInt \(ActualuserInputAge)")
} else {
    print("\(String(describing: userInputAge)) cant be converted to an Int")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"

let calendar = Calendar.current

let currentDate = Date()
let myBirthDateString = "01.01.2010"

let myBirthDate = formatter.date(from: myBirthDateString) ?? Date()

var totalYearsFromBirth = calendar.dateComponents([.year], from: myBirthDate, to: currentDate).year
var totalMonthFromBirth = calendar.dateComponents([.month], from: myBirthDate, to: currentDate).month
var totalDayFromBirth = calendar.dateComponents([.day], from: myBirthDate, to: currentDate).day

if totalYearsFromBirth == 0 || totalMonthFromBirth == 0 || totalDayFromBirth == 0 {
    print("unable to convert")
} else {
        print("Total years: \(totalYearsFromBirth!), total month: \(totalMonthFromBirth!), total days: \(totalDayFromBirth!)")
}

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

var quater = calendar.Component(.month, from: myBirthDateString)

switch quater {
    
}




