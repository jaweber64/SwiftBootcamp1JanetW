//: Playground - noun: a place where people can play

import UIKit
// *********************************************************************
// Janet Weber     DUE: 1/24/16
//
// ASSIGNMENT:  Write code to perform the following:
// 1) Assign a list of unique random numbers to 5 variables and 5 constants.
// 2) Place them into an array
// 3) Sort them into ascending order
// 4) Store them into a dictionary using key values for easy retrieval of the highest and lowest number.
// 5) Change a variable or constant and show me it works!
// *********************************************************************

var uniqueNums = [Int]()                    // integer array holding newly created unique numbers
var duplicate : Bool                        // boolean used to flag duplicates
var randNum : Int;                          // random number generated by arc4random_uniform

// *********************************************************************
// First generate 10 unique numbers
// *********************************************************************
for _ in 1...10 {                             // loop 10 times
    repeat {// do this loop at least once (10 times)
        randNum = Int(arc4random_uniform(100))    // generate random num 0-99
        duplicate = false                         // initialize duplicate flag to false
        //print("generated num ", randNum)
        for num in uniqueNums {                   // Cycle thru elements of uniqueNums
            if (num == randNum) {                 //   compare random to elements of uniqueNums
                duplicate = true                  //   if equal, set flag and break out of loop
                //print("duplicate ",num)
                break
            }
        }
        
        if !duplicate {                           // if flag not set, append to uniqueNums array
            uniqueNums.append(randNum)
            //print(randNum)
        }
    } while duplicate                           // if duplicate repeat
}
print ("Here are the unique numbers",uniqueNums)

// *********************************************************************
// Step 1: Assign a unique list of random numbers to 5 variables and 5 constants
// *********************************************************************
var var1, var2, var3, var4, var5 : Int          // 5 variables var1...var5

    var1 = 100
    //var1 = uniqueNums[0]                        // 5 variables
    var2 = uniqueNums[1]
    var3 = uniqueNums[2]
    var4 = uniqueNums[3]
    var5 = uniqueNums[4]

    let const1 = 101
    //let const1 = uniqueNums[5]                  // 5 constants
    let const2 = uniqueNums[6]
    let const3 = uniqueNums[7]
    let const4 = uniqueNums[8]
    let const5 = uniqueNums[9]

// *********************************************************************
// Step 2: Place them into an array (called unsortedList)
// *********************************************************************
var unsortedList = [Int]()                      // declare/init array to hold unsorted list
unsortedList.append(var1)                       //   Just add each of the 5
unsortedList.append(const1)                     //   variables and 5 constants
unsortedList.append(var2)                       //   to the array using the
unsortedList.append(const2)                     //   "append" method
unsortedList.append(var3)
unsortedList.append(const3)
unsortedList.append(var4)
unsortedList.append(const4)
unsortedList.append(var5)
unsortedList.append(const5)

// *********************************************************************
// Step 3: Sort the array in ascending order
// *********************************************************************
var sortedList = [Int]()                        // declare/init array to hold sorted list
sortedList = unsortedList.sort()                // Use "sort" method to sort unsortedList
print("\nUnsorted List",unsortedList)           //   and assign to sortedList.
print("\nSorted List ",sortedList)              // Print each list

// *********************************************************************
// Step 4: Store them into a dictionary using key values for easy retrieval of highest
//  and lowest number.  I decided to use a String key.  Doesn't mean anything - just
//  for example.
// *********************************************************************
var dictList : [String:Int] = [:]               // declare/init dictionary

                                                // assign values to dictionary
dictList = ["MIN":sortedList[0], "MAX":sortedList[9], "AAA":sortedList[1],
    "BBB":sortedList[2], "CCC":sortedList[3], "DDD":sortedList[4],
    "EEE":sortedList[5], "FFF":sortedList[6], "GGG":sortedList[7],
    "HHH":sortedList[8]]

print("\nDictionary", dictList)                 // display entire dictionary
print("Highest number => ",dictList["MAX"]!)    // display highest number
print("Lowest number =>  ",dictList["MIN"]!)    // display lowest number

// *********************************************************************
// Step 5: Change a variable or constant
//      Just comment out lines 55 and 48
//      while uncommenting lines 54 and 47
// *********************************************************************
