import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam = ["Girls"]

var resultsOfGames = [String: [[String]]]()

resultsOfGames["Brooklyn Nets"] = [["99", "89"], ["109", "99"]]
resultsOfGames["Dallas Mavericks"] = [["87", "93"], ["104", "97"]]
resultsOfGames["Washington Wizards"] = [["117", "112"], ["107", "122"]]

//Dictionary with String and values of an arrays of two Sting

for (otherTeam, rezult) in resultsOfGames {
    for i in 0..<rezult.count{
        print("\(myTeam) against \(otherTeam) scored \(rezult[i]) ")
    }
}

// ahother option

for (_ , _) in resultsOfGames {
    print("\(myTeam) vs \(resultsOfGames)")
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let wallet = [5, 10, 20, 50, 100, 200, 500] // Array of available cash
func calculateCash(wallet: [Int]) -> Int {
    var cashSum = 0
    for cash in wallet {
        cashSum += cash
        
    }
    return cashSum
}

let totalCash = calculateCash(wallet: wallet) // sum in wallet

print("Total cash in the wallet: \(totalCash) EUR")


/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(number: Int) -> Bool {
    return number % 2 == 0
}

//func takes an int "number" and returns bool to check is num is even ar odd. It use modulo operator % to check if reminder of dividing by 2 is zero

isEvenNumber(number: 5)
isEvenNumber(number: 6)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from start: Int, to end: Int) -> [Int] {
    var result = [Int]()
    for i in start...end {
        result.append(i)
    }
    return result
}
//2 parameters start and end of type Int. Empty array -result and the loop through each nr between start and end... append the result to the result

// create arry 1 to 100, whwre each nr is result of multiplying by 2

var array = createArray(from: 1, to: 100)
print(array)


/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

//for i in (0..<array.count).reversed() {
// if(isEvenNumber(array[i])) {
//   array.remove(at: i);
//      )
//   }

array.removeAll(where: isEvenNumber)

var resultFilter = array.filter({$0 % 2 != 0})

print(resultFilter)









