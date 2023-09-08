/*:
 ### Part 4: Control Flow
1.Here is an array:
let lottoNumbers = [10, 9, 8, 7, 6, 5]
Please use For-In loop and Range to print the last three members in the
lottoNumbers array.
 
 作答：
*/
    let lottoNumbers = [10, 9, 8, 7, 6, 5]
    for win in lottoNumbers[3...5]{
        print(win)
    }
/*:
 ---
 2. Please use a for-in loop to print the results as the images listed below respectively
 (through lottoNumbers.):
 
 作答：
 */
    for numbers in lottoNumbers.reversed() {
        print(numbers)
    }
    print("\n")
 
    for number in lottoNumbers{
        if number % 2 == 0{
            print(number)
        }
    }
/*:
 ---
 3. Please use a while loop to solve the Q2.
 
 作答：
 */
    var number2 = lottoNumbers.count-1
    while number2 >= 0{
        let num = lottoNumbers[number2]
        print(num)
        number2 -= 1
    }
    print("\n")
    
    var numbe = 0
    while numbe <= lottoNumbers.count-1{
        let num = lottoNumbers[numbe]
        if num % 2 == 0{
            print(num)
        }
        numbe += 1
    }
/*:
 ---
 4. Please use a repeat-while loop to solve Q2.
 
 作答：
  */
    var number3 = lottoNumbers.count-1
    repeat{
        let num = lottoNumbers[number3]
        print(num)
        number3 -= 1
    }while number3 >= 0
    print("\n")
   
    var numb = 0
    repeat{
        let num = lottoNumbers[numb]
        if num % 2 == 0{
            print(num)
        }
        numb += 1
    }while numb <= lottoNumbers.count-1
/*:
 ---
 5. What are the differences between while and repeat-while?
 
 作答：

        while and repeat-while的差異為判斷條件的時間不同
            while，先判斷在執行，符合判斷則執行迴圈，不符合則不執行
            例：先詢問有沒有玩遊戲的意願，確認要玩才開啟遊戲畫面
     
        repeat-while，先執行一次再判斷條件是否符合，因此不倫是否符合判斷都會先執行
            例：先玩一次遊戲後，才詢問要不要再玩一次
 
---
 6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”
 
 作答：
 */
    var isRaining = true
    if isRaining == true{
        print("It’s raining, I don’t want to work today.")
    }else{
        print("Although it’s sunny, I still don’t want to work today.")
    }
/*:
 ---
 7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director.
 Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.
 
 作答：

 一、if-else：
 */
     var jobLevel = 0
     
     if jobLevel == 1{
        print("Member")
     }else if jobLevel == 2{
        print("Team Leader")
     }else if jobLevel == 3{
        print("Manager")
     }else if jobLevel == 4{
        print("Director")
     }else{
        print("We don't have this job")
     }
/*:
二、switch：
*/

    var jobLevel2 = 0
 
    switch jobLevel2{
    case 1:
        print("Member")
    case 2:
        print("Team Leader")
    case 3:
        print("Manager")
    case 4:
        print("Director")
    default:
        print("We don't have this job")
    }


