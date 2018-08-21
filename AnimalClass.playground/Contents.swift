//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

struct Name{
    var species:String=" "
    var family:String=" "
    var arraysoffamily:[String] = []
    
    mutating func setproperties(family:String)
    {
        arraysoffamily.append(family)
        
    }
    
    func printfamilydetails()
    {
        print("The familys are")
        print(arraysoffamily)
    }
}
class animal {
    
    lazy var name=Name()
    
    var year:Int{
        get{
            return 2018
        }
        set{
            print("lifespan is",year-newValue)
            
            
        }
        
    }
    var celsius: Float = 0.0
    var fahrenheit: Float {
        
        get {
            return (celsius * 1.8) + 32.0
        }
        set {
            celsius = (newValue - 32)/1.8
            
            print("Temperature in fahrenheit is  ",newValue," and in celsius is  ",celsius)
            
        }
        
    }
    var region:String=" "
    var cellshape:String="Flat"
    static var noofeyes=2
    static var isTail=true
    final var color="brown"
    
    static func properties () {
        print("no of legs is 2")
        print("no of eyes is ",noofeyes)
        
    }
    
    func displayCellshape()
    {
        print("Cell shape of animals is flat",cellshape)
    }
    
    class  func istailspresent()
    {
        print(isTail)
    }
    
    final func display()
    {
        print("Displaying information")
    }
    
}

final class vertebrates:animal {
    
    var backbonedensity:Int = 0{
        
        willSet{
            print("the new value of backbonedensity is =  ",newValue)
        }
        didSet{
            print("The old value of backbonedensity is = ",oldValue)
        }
    }
    var backboneWeight:Double=0
    
    
    override class func istailspresent () {
        print(" is tail present ",false)
    }
}


final class invertebrates:animal{
    var visible:Bool=false
    
    override func displayCellshape() {
        print("Cell shape of invertebrates is",cellshape)
    }
    
}

var human=vertebrates ()
human.display()
human.backbonedensity=100
human.backboneWeight=50.25688
human.region="India"
human.year=1996
human.fahrenheit=55
vertebrates.istailspresent()
human.name.setproperties(family: "homo")
human.name.setproperties(family:"sapiens")
human.name.printfamilydetails()
human.color="yellow"
print(human.color)
vertebrates.properties()



var amoeba=invertebrates()
print("/////////////////////")
amoeba.display()
amoeba.cellshape="irregular"
amoeba.displayCellshape()
invertebrates.noofeyes=4
invertebrates.properties()
amoeba.name.setproperties(family: "uvw")
amoeba.name.setproperties(family:"xyz")
amoeba.name.printfamilydetails()

