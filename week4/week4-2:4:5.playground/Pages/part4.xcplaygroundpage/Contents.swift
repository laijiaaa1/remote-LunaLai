import UIKit

func printPyramid(layers: Int) {
    for i in 1...layers {
        let count = layers - i      //確保不會在for迴圈中出現1...0的錯誤
        if count > 0 {              //count等於0時直接開始打星星
            for _ in 1...count {
                print(" ", terminator: "")
            }
        }
        for _ in 1...(2 * i - 1) {
            print("*", terminator: "")
        }
        print("")
    }
}
printPyramid(layers: 5)
