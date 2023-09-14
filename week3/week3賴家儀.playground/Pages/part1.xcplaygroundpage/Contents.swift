/*:
### 1. What is a closure ? How to execute a closure?
 closure是獨立的，可以在程式中傳遞和使用
 特性：
 1. 可存儲為變數
         let add = { (a: Int, b: Int) -> Int in
           return a + b
         }
         let sum = add(3, 5)
         print(sum) // Output: 8
 
 2. 可用作函數參數
         let numbers = [1, 2, 3, 4, 5]
         let squaredNumbers = operateOnArray(numbers: numbers, operation: { (number) -> Int in
           return number * number
         })
         print(squaredNumbers)  // Output: [1, 4, 9, 16, 25]


 3. 當閉包是函數調用的最後一個參數時，可以使用Trailing Closure
         let squaredNumbers = operateOnArray(numbers: numbers) { (number) -> Int in
           return number * number
         }

 4. 允許閉包引用在其自身範圍之外定義的變數，而無需將它們作為參數傳遞。
         var x = 10
         let add = { (a: Int) -> Int in
           return a + x
         }
         print(add(5)) // prints 15
         x = 15

 5. 如果編譯器可以推斷參數的類型和返回類型的類型，則可以對閉包使用簡短的語法，拿掉（）和 type
         let add: (Int, Int) -> Int
         add = { a, b in
           return a + b
         }
 6. 在函數定義中的參數類型之前由關鍵字 @ escaping 表示，將在函數返回後才調用closure。(一般是在函數內使用並在函數返回時釋放)

 7. Shorthand Argument Names:
        let add: Int = { $0 + $1 }

    常與map/filter/forEach/reduce/flatMap搭配使用:
         let numbers = [1, 2, 3, 4, 5]
         let doubledNumbers = numbers.map { $0 * 2 }
         print(doubledNumbers) //prints [2, 4, 6, 8, 10]

         let numbers = [1, 2, 3, 4, 5]
         let filterNumbers = numbers.filter { $0 > 3 }
         print(filterNumbers) //prints [4, 5]
         
         let numbers = [1, 2, 3, 4, 5]
         numbers.forEach { print($0) }
         
         let numbers = [1, 2, 3, 4 ,5]
         let reducedNumber = numbers.reduce(0) { $0 + $1 }    //初始值為0
         print(reducedNumber) //prints 15

         let numbers = [1, nil, 2, nil, 3, nil, 4, nil, 5]
         let flatMapNumbers = numbers.flatMap { $0 }
         print(flatMapNumbers) //prints [1, 2, 3, 4, 5]
*/
