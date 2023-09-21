/*:
 ### 2. Please declare a closure whose input type is Int, output type is Bool. The functionality of
 this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.
 */

var result = {(_ numbers: Int) -> Bool in
     numbers % 2 != 0
}

let a = result(3)
let b = result(10)





