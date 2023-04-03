import UIKit

/*
Exercise 1
1.Create new Class Orange(Fruit). Inside the Class declare:
     color = ""
     teste = ""
     weight = 0.0
 2.Make Class example from Orange Class and named it as someOrange.
 3.Give specific value for:
     color = "Orange"
     taste = "Sweet"
     weight = 0.66
 4.print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/

// let friutOrange = "OOP"
// let friutColor = "OOP OOP"
// let friutTaste = ""
// let friutWeight = ""

class Friut {
    var friutColor = ""
    var friutTaste = ""
    var friutWeight = 0.0
}

let someOrange = Friut()

someOrange.friutColor = "Orange"
someOrange.friutTaste = "Sweet"
someOrange.friutWeight = 0.66

print("My \(someOrange.friutWeight) kg orange has \(someOrange.friutColor) color and \(someOrange.friutTaste) taste")



/*
Exercise 2
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/

class Parent {
    var height: Float
    var width: Float
    var radius: Float
    var square: Float
    var perimeter: Float
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
        self.radius = 0
        self.square = 0
        self.perimeter = 0
    }
    
    func squareOfFigure() -> Float {
        return square
    }
    
    func perimeterOfFigure() -> Float {
        return perimeter
        
    }

class Child: Parent {
    override init(height: Float, width: Float) {
        super.init(height: height, width: width)
        self.square = height * width
        self.perimeter = 2 * (height + width)
    }
    
    
    override func squareOfFigure() -> Float {
        return perimeter
        
    }
    
    func description() {
        print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
        
    }
    
}

let myRectangle = Child(height: 5, width: 3)
    
    myRectangle.description()
    
 print("Retangle area is:\(square), and perimeter of Figure is: \(perimeter)")































