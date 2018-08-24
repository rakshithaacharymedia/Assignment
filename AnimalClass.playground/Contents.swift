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
    var year:Int=2014
    var celsius: Float = 0.0
    var fahrenheit: Float {
        get {
            return 1
        }
        set {
            celsius = (newValue - 32)/1.8
            print("Temperature in fahrenheit is  ",newValue," and in celsius is  ",celsius)
            
           }
        
      }
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
        print(" is tail present ",true)
    }
}
final class invertebrates:animal{
    var visible:Bool=false
    override func displayCellshape() {
        print("Cell shape of invertebrates is",cellshape)
    }
    override class func istailspresent () {
        print(" is tail present ",false)
    }
    
}



////////////////////////////////////////////////////////
var human=vertebrates ()
human.display()
human.backbonedensity=100
human.backboneWeight=50.25688
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

