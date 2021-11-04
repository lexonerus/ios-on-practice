/*
 21.04.2021
 Alexey Krzywicki
 binary search algorithm in Swift
*/

import Foundation

var greeting = "Hello, playground"

var list: [Int] = []

func binarySearch(list: Array<Int>, item: Int) -> Any {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = list[mid]
        if guess == item {
            return "item found at index - \(mid + 1)"
        }
        if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
        
    }
    
    return "item doesnt exist"
    
}


// test

list = [1, 2, 3, 23, 24, 26, 35, 40, 55, 74, 78, 99]
var result = binarySearch(list: list, item: 99)

print(result)


// For search in 4bil-list you need only 32 guesses!..
print(log2(Double(4000000000)))
