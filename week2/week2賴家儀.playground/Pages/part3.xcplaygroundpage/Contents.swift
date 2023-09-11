/*:
 # Part 3: Protocol in Swift
 1. Declare a struct Person with a name property type String and a protocol name
 PoliceMan . There is only one method arrestCriminals with no argument and return
 void in the protocol.
 */
protocol PoliceMan {
    func arrestCriminals()
}
protocol ToolMan{
    func fixComputer()
}
struct Person: PoliceMan{
    var name: String
    var toolMan: ToolMan{
        return Engineer()
    }
    func arrestCriminals(){
        print("\(name) is a policeman who arrests criminals")
    }
}
struct Engineer: ToolMan{
    func fixComputer(){
        print("\(person.name) is an engineer who fixes computers")
    }
}
let person = Person(name: "Steven")
person.arrestCriminals()
person.toolMan.fixComputer()

