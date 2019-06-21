import UIKit
/*

 888      .d88888b.   .d88888b.  8888888b.   .d8888b.
 888     d88P" "Y88b d88P" "Y88b 888   Y88b d88P  Y88b
 888     888     888 888     888 888    888 Y88b.
 888     888     888 888     888 888   d88P  "Y888b.
 888     888     888 888     888 8888888P"      "Y88b.
 888     888     888 888     888 888              "888
 888     Y88b. .d88P Y88b. .d88P 888        Y88b  d88P
 88888888 "Y88888P"   "Y88888P"  888         "Y8888P"
 
 
*/


///////////////////////////////////////////////////////////////////////////////
/* For loops */
// Swift has a few ways of writing loops, but their underlying mechanism is the same:
// run some code repeatedly until a condition evaluates as false.
// The most common loop in Swift is a for loop:
// it will loop over arrays and ranges, and each time the loop goes
// around it will pull out one item and assign to a constant.

let count = 1...5

for number in count {
    print(number)
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

///////////////////////////////////////////////////////////////////////////////
/* While loops */
// A second way of writing loops is using while:
// give it a condition to check, and its loop code will go around and around
// until the condition fails.

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

///////////////////////////////////////////////////////////////////////////////
/* Repeat loops */
// The third way of writing loops is not commonly used, but it’s so simple to learn we
// might as well cover it:
// it’s called the repeat loop, and it’s identical to a while loop
// except the condition to check comes at the end.

number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")


///////////////////////////////////////////////////////////////////////////////
/* Exiting loops */
// You can exit a loop at any time using the break keyword. To try this out,
// let’s start with a regular while loop that counts down for a rocket launch:
var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    
    countDown -= 1
}

print("Blast off!")


///////////////////////////////////////////////////////////////////////////////
/* Exiting multiple loops */
// If you put a loop inside a loop it’s called a nested loop,
// and it’s not uncommon to want to break out of both the inner
// loop and the outer loop at the same time.
// If we wanted to exit part-way through we need to do two things.
// First, we give the outside loop a label, like this:
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


/* Skipping items */
// As you’ve seen, the break keyword exits a loop.
// But if you just want to skip the current item and continue on to the next one,
// you should use continue instead.
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}



