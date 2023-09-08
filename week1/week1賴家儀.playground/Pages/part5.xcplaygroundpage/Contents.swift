/*:
### Part 5: Function
1. What are the return types in the following statements?
 
作答：
 
        func birthday( ) -> String {}
        回傳資料型態為String的結果
     
        func payment( ) -> Double {}
        回傳資料型態為Double的結果
---

2. Please declare a function named multiply with two arguments a and b . This
function won’t return any value and will only print out the result of a * b . Be noticed
that we want to give the argument b a default value of 10.
 
 作答：
 */
    func multiply(a: Int,b: Int = 10){
        print(a * b)
    }
/*:
 ---
3. What’s the difference between argument label and parameter name in a function?
 
 作答：
     
         parameter name為function參數的內部名，用於傳遞給參數的值，一定要有
         argument label為function參數的外部名，用於指示參數的用途，可省略
            例：
 */
    func eat(animal name: String, action eating: String){
        print("\(name),\(eating)")
    }
/*:
 animal、action為外部參數標籤argument label，提供參數內容
 
    例：
*/
    func move(animal name: String, action moving: String){
        print("\(name),\(moving)")
    }
    move(animal: "bird", action: "fly")
/*:
 ---
4. Please declare a function named greet with person as an argument label and
.name. as a parameter name. This greet function will return a String. For example, if
you call the function greet like this:
greet(person: "Luke")
It will return the string: “Hello, Luke”.
 
 作答：
 */
    func greet(person name: String) -> String{
        return "Hello, \(name)"
    }
    greet(person: "Luke")


