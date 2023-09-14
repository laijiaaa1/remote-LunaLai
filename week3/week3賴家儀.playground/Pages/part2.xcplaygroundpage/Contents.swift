/*:
 ### 2. Please declare a closure whose input type is Int, output type is Bool. The functionality of
 this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.
 */

//1
var result = {(_ numbers: Int) -> Bool in
     numbers % 2 != 0
}

let odd = result(3)
let even = result(10)





