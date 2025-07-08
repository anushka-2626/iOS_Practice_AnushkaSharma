
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

class Vehicle{
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
    override func makeNoise() {
        print("tinggg")
    }
}

let tandem = Tandem()
tandem.hasbasket = true
tandem.noOfPeople=2
print(tandem.noOfPeople)
print(tandem.makeNoise())

