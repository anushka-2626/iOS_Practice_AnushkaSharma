
import UIKit

//var myString = ""
//if myString.isEmpty{
//    print("string is empty")
//}
//
//let a = 4
//let b = 5
//print("if a is \(a) and b is \(b) then sum of a and b is \(a+b)")

//let str = "palak"
//let str1 = "Palak"
//
//
//if str.lowercased() == str1.lowercased(){
//    print("they are same")
//}
//else{
//    print("they are not same")
//}
//
//
//let name = "palak kalia"
//print( name.count)
//
//

//func hel(){
//    print("hellooooo")
//}
//
//hel()


/*func cal(a:Int , b:Int){
    print(a*b)
    print(a/b)
    print(a+b)
    print(a-b)
}
cal(a:30,b:20)


func intro(to name:String ,  age:Int){
    print("helo my name is \(name) i am \(age) years old")
}
intro(to :"palak",age :20)
//intro(name:"khushi",age:21)

func cali(to a:Int , and b:Int){
    print(a-b)
}
cali(to :20, and: 10)
*/

//structure is a custom data type- collection of different datas
/*struct Person{
    var name: String //property of structure
    var age: Int
    func printPerson(){
        print(self.name)
    }
}
//instance of ur structure
let anu = Person(name: "anu",age: 23) //structure instance- stored properties
//Person(name: "anu") //setting vallue to property of instance
print(MemoryLayout<Person>.size)
print(anu.name)
anu.printPerson()

struct Shirt{
    var size: String
    var  color: String
    mutating func setColor(newColor: String){
        self.color=newColor
    }
}

let myShirt = Shirt(size:"XL",color:"blue")
var yourShirt = Shirt(size: "M", color: "black")
print(yourShirt.color)
yourShirt.color = "white"
print(yourShirt.color)
yourShirt.setColor(newColor: "red")
print(yourShirt.color)

struct Car{
    var make: String /* = "no data" */ //default value
    var year: Int
    var color: String
    init(){
        self.year = 0
        self.color = "n/a"
        self.make = "no data"
    }
    init(make: String,year: Int, color: String){
        self.year = year
        self.color = color
        self.make = make
    }//if u set parameterised constructor u hv to set parameter default as well (for all the variables)
    
    func startEngine(){
        print("engine started")
    }
    func drive(){
        print("driving...")
    }
    func park(){
        print("parked succesfully")
    }
    func steer(direction: String){
        print("steering to \(direction)")
    }
}
let firstCar=Car(make:"Honda",year:2020,color:"Red")//member initialised
let secondCar=Car()//default initialiser
firstCar.startEngine()
firstCar.drive()
firstCar.steer(direction: "left")
print(secondCar.color)
print(secondCar.year)
*/

//---------7 july-----------

/*struct Size {
    var width: Double
    var height: Double
    
    func area() -> Double{
        width * height
    }
}

var someSize=Size(width: 10.0, height: 20.0)
let area=someSize.area()
print("The area is \(area)")

struct Car{
    var odometer: Int
    var speed: Int
    
    func printCarStatus(){
        print("the speed is \(speed) and odometer is \(odometer)")
    }
    
    mutating func incrementSpeed(_ changeSpeed: Int = 1){
        self.speed += changeSpeed
    }
    
    mutating func adjustOdometer(){
        odometer += 1
    }
}

var bugatti=Car(odometer: 100, speed: 70)
bugatti.printCarStatus()
bugatti.incrementSpeed(5)
bugatti.incrementSpeed()
bugatti.adjustOdometer()
bugatti.printCarStatus()
*/

/*struct Temp{
    var c: Double = 0{
        willSet{
            print("value will be updated")
        }
        didSet{
            if (c > oldValue){
                print("value was changed")
            }
        }
    }
    var f: Double{
        (c - 32) * 1.8
    }
    var k: Double{
        c + 273.15
    }
    
    /* init(c: Double) {
     self.c = c
     self.f = (c - 32) * 1.8
     self.k = c + 273.15
     }
     
     init(f: Double) {
     self.c = (f - 32) * 5/9 + 32
     self.f = f
     self.k = f + 273.15
     }
    
    init (c: Double){
        self.c = c
    }*/
    
    func printTemp(){
        print("the temp in celcius is \(c) and in farenheit is \(f) and in kelvin is \(k)")
    }
    
    mutating func changeTemp(){
        var temp = self.c
        //c = temp
        c += 1
    }
}

var chitkara=Temp(c: 30)
chitkara.printTemp()
chitkara.changeTemp()
chitkara.printTemp()*/


//---------8 july---------

/*class Vehicle{
    var currentSpeed = 0.0
    var description : String {
        "travelling at \(currentSpeed)"
    }
    
    func makeNoise(){
        print("ting ting")
    }
    
}
let vehicle = Vehicle()
print("Vehicle \(vehicle.description)")

class Bicycle: Vehicle {
    var hasbasket=false
}

let bicycle = Bicycle()
bicycle.hasbasket=true
bicycle.currentSpeed=18.00

print(bicycle.currentSpeed)
print(bicycle.hasbasket)

class Tandem : Bicycle {
    var noOfPeople = 0
    override var description: String {
        super.description + " but slow"
    }
    override func makeNoise() {
        print("tinggg")
    }
}

let tandem = Tandem()
tandem.hasbasket = true
tandem.noOfPeople=2
print(tandem.noOfPeople)
print(tandem.makeNoise())
print(tandem.description)
*/

//---------9 july-------
//collections
/*
var names = ["anu","diksha","gunita"]

print(names.contains("anu"))
print(names.count)
print(names[0])

names.append("vansh")
print(names)

names.insert("minion",at: 1)
print(names)

names.remove(at: 4)
print(names)

names.removeLast()
print(names)

//names.removeAll()
//print(names)

let arr1=[1,2,3]
let arr2=[4,5,6]
let arr3=[arr1,arr2]
print(arr3)

var scores = ["anu": 5,"abhi": 10]
print(scores["anu"])
let oldValue = scores.updateValue(10, forKey: "anu")
print(scores)
print(oldValue)
scores["anu"] = nil
scores["momo"] = 15
print(scores)
scores.removeValue(forKey: "anu")
print(scores)

let namess = Array(scores.keys)
let points = Array(scores.values)
print(namess)
print(points)


//loops

for index in 1...5 {
    print(index)
}

for index in 1..<5 {
    print(index)
}

for name in names {
    print(name)
}

for letter in "ABCDE" {
    print(letter)
}

for (index,letter) in "ABCDE".enumerated() {
    print("\(letter) at \(index)")
}

for (name,score) in scores {
    print("\(name) got \(score)")
}

var lives = 3
while lives > 0 {
    print(lives)
    lives -= 1
}

var count = 3
repeat {
    print(count)
    count -= 1
} while count > 1
*/


//----------10 july-------
//optionals
/*
struct Book{
    var name: String
    var year: Int?
}

let first = Book(name:"Hi",year:2005)
let second = Book(name:"Hello",year:2006)

var books: [Book]? = [first,second]
books = nil

var bookss: [Book?] = [first,second]
books = [nil]

var third = Book(name:"third",year:nil)

struct Toddler{
    var name: String
    var age: Int
    
    init?(name: String, age: Int){
        if(age < 12 || age > 36){
            retrun nil
        }else{
            self.name = name
            self.age = age
        }
    }
}


struct Person{
    var age: Int
    var residence: Residence?
}

struct Residence{
    var address: Address?
}

struct Address{
    var bno: String?
    var street: String?
    var ano: String?
}

let person = Person(age: 35, residence: Residence(address: Address(bno: "11a",street: "str10",ano: "6")))

*/

//-------11 july--------

