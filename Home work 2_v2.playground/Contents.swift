import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let period = 5
let deposit : Double = 500_000
let rate = 0.02
var profit: Double = 0
var totalDeposit = profit

for _ in 1...period {
    profit = deposit * rate
    totalDeposit = profit + deposit
}

print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(totalDeposit) Eur !")


/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let numbers = [8, 11, 14, 15, 19, 20]

// create an empty list where to store evenNumber
var evenNumbers: [Int] = []

for number in numbers {
    if number % 2 == 0 {
        evenNumbers.append(number)
    }
}
// we loop each nr in the numbers array using a for loop and check if the even nr is ...using % . if it is even we append it to the evenNumber operator

print("My even numbers are: \(evenNumbers)")


/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter = 0
var bool = false

for _ in 1...10 {
    
    let randomNumber = Int.random(in: 1...10)
    counter += 1
    
    if randomNumber == 5 {
        print("Number 5 will be after \(counter) shuffles")
        bool = true
        
    }
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let electricPost = 10
let climbDuringDay = 2
let slideDuringNight = 1
// start with let

var climbingMeter = 0
var numberOfDays = 0

// use while loop to keep covered distance until top
while climbingMeter < electricPost {
    numberOfDays += 1
    // increment numberOfDay by 1 and add climbMeter to climbDuringDay to show the distance during the Day
    
    climbingMeter += climbDuringDay
    // 2 meters = 1 day
    
    
    if climbingMeter >= electricPost {
        // when we check if climbMeter >= to 10, if yes -finish
    }
        
    climbingMeter -= slideDuringNight
    // 2 - 1  = 1 meter per day
}

print("Bug will spend \(numberOfDays) to reach top of the post")


