/*:
 # Part 2: Enumerations and Optionals in Swift
 1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to
 model them.
 */
enum Gasoline: String{
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    var price: Double{
        switch self{
        case .oil92:
            return 31.1
        case .oil95:
            return 32.6
        case .oil98:
            return 34.6
        case .diesel:
            return 29.3
        }
    }
    
    func getPrice() -> Double{
        return self.price
    }
}
/*:
 - enum associated value：
     1. 將enum的實體，和有意義的數據儲存在一起。
     2. 可以視情況中的關聯值用作 switch，將每個關聯值提取為常數（使用 let 前綴）或是變數（使用 var 前綴）以在 switch case 中使用。
     3. 以下舉例：
        定義一個名為 gasoline 的enum 類型，他可以是oil92，其關聯值的類型為(price: Double)
 
 */
enum gasoline{
    case oil92(price: Double)
}
let oil = gasoline.oil92(price: 31.2)   //oil被賦予了一個 gasoline.oil92，關聯了(price: 31.2)

switch oil {
case .oil92(let price):
    print("The price for oil92 is \(price).")
}

//參考資料：https://ithelp.ithome.com.tw/articles/10195397

/*:
 2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the
 value of a will be nil or Int . You should have learned how to deal with Optional.
 
 */
/*:
 - 使用guard let:

 
        class Pet{
            var name: String
            init(name: String) {
                self.name = name
            }
        }
        class People{
            var pet: Pet?
            init(pet: Pet?) {
                self.pet = pet
            }
            
            func petOrNot(){
                guard let pet = self.pet else{
                    return
                }
                print(pet.name)
            }
        }
        let pets = People(pet: Pet(name: "goofy"))
        pets.petOrNot()


 - 使用if let:

         
        class Pet{
            var name: String
            init(name: String) {
                self.name = name
            }
        }
        class People{
            var pet: Pet?
            init(pet: Pet?) {
                self.pet = pet
            }
            
            func petOrNot(){
                if let pet = self.pet {
                    print(pet.name)
                }
            }
        }
        let pets = People(pet: Pet(name: "goofy"))
        pets.petOrNot()
 */
