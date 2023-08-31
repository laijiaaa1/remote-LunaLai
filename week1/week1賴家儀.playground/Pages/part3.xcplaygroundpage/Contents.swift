//Part 3: Collection

/*
 1. Please initialize an empty array with String data type and assign it to a variable named myFriends .
 
 作答：
     var myFriends: [String] = []
  --------------------------------
  
 2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once.
 
 作答：
     myFriends += ["Ian", "Bomi", "Kevin"]
  --------------------------------
 
 3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of myFriends array.
 
 作答：
     myFriends.append("Michael")
  --------------------------------
 
 4. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.
 
 作答：
 方法一、
    myFriends.swapAt(2, 0)
    myFriends.swapAt(2, 1)
 
* 方法二、(有想起來的話用這個)
    let change = myFriends.remove(at: 2)
    myFriends.insert(change, at: 0)
  --------------------------------
 
 5. Use for...in to print all the friends in myFriends array.
 
 作答：
    for myFriend in myFriends {
        print(myFriend)
    }
  --------------------------------
 
 6. Now I want to know who is at index 5 in the myFriends array, try to find the answer
 for me. Please explain how you get the answer and why the answer is it.
 
 作答：
 搜尋方法：依序尋找陣列中的值，直到索引為5時輸出結果
    for myFriend in myFriends {
        if myFriend == myFriends[5]{
            print(myFriend)
        }
    }
 發生錯誤：此陣列的長度為4，因此索引範圍為0到3，無法找到索引值為5的有效值，超出有效索引範圍而發生錯誤
  --------------------------------
 
 7. How to get the first element in an array?
 
 作答：
    let firstElement = myFriends.first
  --------------------------------
 
 8. How to get the last element in an array?
 
 作答：
    let lastElement = myFriends.last
  --------------------------------
 
 9. Please initialize a dictionary with keys of type String, value of type Int, and assign it to a variable named myCountryNumber.
 
 作答：
     var myCountryNumber: [String: Int] = ["TW": 886]
  --------------------------------
 
* 10. Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively.
 
 作答：
    let addCountries: [String: Int] = ["US": 1, "GB": 44, "JP": 81]
    for (key, value) in addCountries {
        myCountryNumber[key] = value
    }
  --------------------------------
 
 11. Change the value of ‘GB’ from 44 to 0.
 
 作答：
 方法一、
    myCountryNumber.updateValue(0, forKey: "GB")
 
* 方法二、(有想起來的話用這個)
    myCountryNumber["GB"] = 0
 
 *** 0 & nil 差異：
    myCountryNumber["GB"] = 0           //["TW": 886, "US": 1, "JP": 81, "GB": 0]
    myCountryNumber["GB"] = nil         //["TW": 886, "US": 1, "JP": 81]
  --------------------------------
 
 12. How to declare an empty dictionary?
 
 作答：
    方法一、 var emptyDictionary: [KeyType: ValueType] = [:]
        例：var emptyDictionary: [String: Int] = [:]
 
    方法二、 var emptyDictionary = [KeyType: ValueType]()
        例：var emptyDictionary = [String: Int]()
  --------------------------------
 
 13. How to remove a key-value pair in a dictionary?
 
 作答：
    dictionary.removeValue(forKey: 鍵值)
        例：dictionary.removeValue(forKey: "US")
*    dictionary[鍵值] = nil
        例：myCountryNumber["US"] = nil
  --------------------------------
 
 */
