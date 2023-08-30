//Part 2: Basic
/*
1. Please explain the difference between let and var .
    
作答：
    let宣告的值為常數，是不能更改的
    var宣告的值為變數，可更改
 --------------------------------
 
2. In Swift, we usually define a variable through the syntax as below:
                              var x: Int = 10.
 We use the formula: 2 * radius * pi to calculate the circumference. Now, please define a variable pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.
   
 作答：
    let pi: Double = 3.14
        -因爲pi為固定不變的數值3.14，故使用let宣告，避免意外的修改
        -3.14為浮點數，故資料型態使用Double
 --------------------------------
 
 3. Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average .
    
 作答：
    let x : Int = 6
    let y : Int = 8
    let average = (x + y) / 2
 --------------------------------
 
 4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
 ● Please solve this problem so that we can put the average in the record system.
   
 作答：
    將整數轉換為浮點數
    let average = Double((x + y) / 2)
 
 ● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
    
 作答：
    差異為資料型態和精度的不同
    ( 10 / 3 )為Int資料型態，經過除法運算後，將省略小數部分，僅保留整數的值為計算結果 例：3
    ( 10.0 / 3.0 )為Double資料型態，經過除法運算後，將保留整數及小數為計算結果 例：3.33...
 --------------------------------
 
 5. Declare two constants that values are 10 and 3 each, then please calculate the
 remainder and save the result in a constant named remainder .

 作答：
    let x : Int = 10
    let y : Int = 3
    let remainder = x % y
 --------------------------------
 
 6. Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation.
 Ex:var x=10.=>var x:Int=10.
 
 作答：
    var flag = true                        => var flag : Bool = true
    var inputString = "Hello world."       => var inputString : String = "Hello world."
    let bitsInBite = 8                     => let bitsInBite : Int = 8
    let averageScore = 86.8                => let averageScore : Double = 86.8
 --------------------------------
 
 7. What is Type Inference in Swift?
 
 作答：
    在宣告常數或變數時，提供初始值則可自動推斷出表達式對應的資料型態，因此代表在宣告時可省略資料型態。
    例：
    let pi = 3.14
    // 此處沒有為初始值指定資料型態，但依據初始值的浮點數，會自動推斷要宣告的型態是Double
 --------------------------------
 
 8.What is the issue about this piece of code?
 var phoneNumber = 0987654321
 phoneNumber = "Hello world."
 
 作答：
    此處phoneNumber會依據初始值，判斷資料型態為Int，
    問題一、資料型態問題（Int更改為String）
    var宣告的值為可更改的變數，但需於相同類型的資料型態中更改，題目敘述中初始值判斷為Int，欲修改的值為String，將出現錯誤
    問題二、將於輸出的結果顯示為987654321，開頭的0將被整數值省略，因此應使用型態為String之字串來表示電話號碼
        例：
        var phoneNumber = "0987654321"
 --------------------------------
 
 9.compound assignment operators are very useful when programming. Please declare a variable   with initial value 22000, and use unary plus operator
 adding 28000 to salary, so it will be 50000 after this process.
 
 作答：
    var salary = 22000
    salary += 28000
 --------------------------------
 
 10. You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant.
 Now please write down the Equality operator in Swift.
 
 作答：
    ==      //Equality operator
 --------------------------------
 */
