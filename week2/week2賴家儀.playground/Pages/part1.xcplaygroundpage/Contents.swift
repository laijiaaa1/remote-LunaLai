/*:
 # Part 1: Object-Oriented Swift
 1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”
*/
enum Gender{
    case male
    case female
    case underfined
}
class Animal{
    var gender: Gender
    func eat(){
        print("I eat everything!")
    }
    init(gender: Gender) {
        self.gender = gender
    }
}

/*:
 ---
 2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.
 */
class Elephant: Animal{
    override func eat() {
        print("Elephant usually eat fruit.")
    }
}
class Tiger: Animal{
    override func eat() {
        print("Tiger usually eat meat.")
    }
}
class Horse: Animal{
    override func eat() {
        print("Horse usually eat grass.")
    }
}

/*:
 ---
 3. Declare a class Zoo with a property weeklyHot which means the most popular one
 in the zoo this week. The codes below can’t work correctly, please find what data
 type should A be and solve the problem. Note that tiger , elephant , and horse are
 instances of class Tiger, Elephant, and Horse respectively.*/
class Zoo{
    var weeklyHot: Animal
    init(weeklyHot: Animal){
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: .underfined))

let tiger = Tiger(gender: .underfined)
let elephant = Elephant(gender: .male)
let horse = Horse(gender: .female)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

/*:
 ---
 4. What is an instance? What does Initilizer do in Class and Struct?

 instance: 是Class 和 Struct中可執行程序的實體，具有屬性和方法，可視為實際的表示形式
 
     - 賦值給其他變數(animalA 和 animalB 都是此程序的實體)
 
 
             class Animal {
                 var name: String
                 init(name: String) {
                     self.name = name
                 }
             }

             let animalA = Animal(name: "dog")
             let animalB = animalA
                
 
 Initilizer: 一個過程，為instance上的所有屬性提供適當的初始值，避免處於不確定狀態。
 - Designated Initializer:初始化所有屬性
 1. height: Double ， weight: Double ， animalName: String 這些是初始化的參數清單，定義了在建立物件時必須提供的值。
 2. self.height = height 將傳入的 height 參數的值分配給物件的 height 屬性。
 
           
             class Animal{
                 var height: Double
                 var weight: Double
                 var animalName: String
             
                 init(height:Double, weight: Double, animalName: String){
                     self.height = height
                     self.weight = weight
                     self.animalName = animalName
                 }
 
 - Convenience Initializer：遇到需補充的參數也需要被初始化時
 1. 在不必初始化所有屬性的情況下創建物件
         
        - (同上)
                 convenience init(newAnimalName: String) {
                     self.init(height: 30.0, weight: 20.0, animalName: newAnimalName)
                 }
    
 */
/*:
 ---
 5. What’s the difference between Struct and Class ?

- Struct：
    1. struct是 immutable的，無法被改變的，需要在func改變時加上 mutating
    2. 不可繼承 Inheritance
    3. 可自訂或自動初始化
    4. Value Type(內容複製，但兩者不會互相影響)
 
- Class：
    1. class是 mutable的內部的屬性是可修改的，不需要加 mutating
    2. 可繼承 Inheritance，subclass可使用superclass的屬性、方法
    3. 需明確定義初始化 init
    4. Reference Type（引用同一個實體，當其中屬性變動時，其他也會跟著變動）
 */
/*:
 ---
 6. What’s the difference between reference type and value type ?

  - reference type:將值分配給變數/常量/函數時，不會複製引用類型，而是引用同一個實體。
  - Class：（Reference Type）引用同一個Animale實體，當animal2 屬性變動時，animal1 也會跟著變動。
 */
         class Animalll {
             var name: String
             init(name: String) {
                 self.name = name
             }
             func changeName(newName: String){
                 name = newName
             }
         }
         var animal1 = Animalll(name: "cat")
                // 創造一個初始值為 name: "cat" 的物件後，將物件位置儲存至 animal1
         
         var animal2 = animal1
                // 將物件的位置複製至 animal2
         
         animal1.changeName(newName: "kitty")
                // 將物件的 animal 值改為 "kitty"
        print(animal1.name)
        print(animal2.name)
                //結果：animal1 ＆ animal2都是 "kitty"
/*:
 - value type:將值分配給變數/常量/函數時，複製其值的類型。
 - Struct：（Value Type）內容複製，雖然 animalb 是 animala 指派的，將內容複製一份過去，但兩者是完全獨立的實體，更改後的值不影響原始的值。

 */
         struct Anima222 {
             var name: String
             mutating func changeName(newName: String){
                 name = newName
             }
         }
        var animala = Anima222(name: "dog")
                // 創造一個初始值為 name: "dog" 的物件後，將物件位置儲存至 animala

        var animalb = animala
                // 將物件的位置複製至 animalb

        animala.changeName(newName: "goofy")
                // 將物件的 animal 值改為 "goofy"
        print(animala.name)
        print(animalb.name)
                //結果：animala為 "goofy"， animalb為 "dog"
/*:
 ---
 7. What’s the difference between instance method and type method ?
 - instance method
        1. 與函數具有完全相同的語法（使用 func 關鍵字定義方法）
        2. 需要把它放在所屬的大括弧中 Class {}。
        3. 允許對實體的狀態進行修改（以下程式碼：將count遞增 1，increment 方法增加了 count 屬性的值。）
        4. 隱式訪問它所屬類型的所有的其他實體方法和屬性（使用 self 關鍵字來引用類型的其他方法和屬性）
        5. 只能在它所屬類型的特定實例上調用，不能在沒有現有實例的情況下獨立調用它（以下程式碼：increment 方法是在 appleCount 實例上調用的。）
 */
        class Counter {
            var count = 0
            func increment() {
                count += 1
            }
        }
        let appleCount = Counter()
        appleCount.increment()
               
/*:
 - type method
     1. 在類型層面上調用，而不是在實體層面上調用：直接使用類型本身
     2. 可以在 func 之前使用 static 關鍵字來明確標示類型方法
 */
         struct Math {
             static func square(_ number: Double) -> Double {   // static 關鍵字
                 return number * number
             }
         }
         let result = Math.square(5.0) // 直接調用類型方法
/*:
    3. 能夠直接通過靜態屬性的名稱訪問靜態屬性，而不需要類型名稱前綴
 */
         struct Math2 {
             
             static let pi = 3.14  // 定義一個靜態屬性 pi
             
             static func area(radius: Double) -> Double {
                 return pi * radius * radius
             }                              // 靜態方法，計算圓的面積，使用靜態屬性 pi
         }
         let area = Math2.area(radius: 2.0)   // 使用靜態方法和靜態屬性
/*:
 ---
 8. What does self mean in an instance method and a type method respectively?

    1. self等同於該實體本身，可在instance method中使用隱含的self屬性來引用作為自己

         func increment() {
             self.count += 1
         }

    2. 參數名稱與屬性名稱相同時，使用self屬性來區分參數名稱和屬性名稱。
        （若未使用self，會被認為x都是指名稱爲x的函數參數）
         
         struct math {
           var x = 0.0, y = 0.0
           func point(x: Double) -> Bool {
             return self.x > x
           }
         }
 
    3. 減少在參數名稱中添加前綴，可使用self清楚匹配
 
       - 無使用self:
         
                struct Student {
                     var name: String
                     var study: String

                     init(name studentName: String, study major: String) {
                         print("hi, \(studentName)")
                         name = studentName
                         study = major
                     }
 
       - 使用self:
 
                 struct Student {
                     var name: String
                     var study: String

                     init(name: String, study: String) {
                         print("hi, \(name)")
                         self.name = name
                         self.study = study
                     }
                 }
 ---
 參考資料：https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methods
 */

