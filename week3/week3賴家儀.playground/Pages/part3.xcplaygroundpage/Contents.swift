/*:
 ### 3. Please complete the following function that prints a triangle made of asterisks.
 */
func printTriangle(layer: Int){

    for i in 1...layer {
        for _ in 1...i{
            print("*", terminator: "")
        }
        print() //換行
    }
}
printTriangle(layer: 5)
