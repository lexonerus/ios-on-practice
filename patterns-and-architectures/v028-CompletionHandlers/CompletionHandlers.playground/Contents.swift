import UIKit

var greeting = "Hello, playground"

let myCompletionHandler: (Bool) -> Void = { doneWotking in
    if doneWotking {
        print("Work is done.")
    }
}

func myFunc(using completionHandler: (Bool) -> Void ) {
    sleep(2)
    print("Stage 1 passed...")
    sleep(2)
    print("Stage 2 passed...")
    sleep(2)
    print("Stage 3 passed...")
    sleep(1)
    completionHandler(true)
}

myFunc(using: myCompletionHandler)
