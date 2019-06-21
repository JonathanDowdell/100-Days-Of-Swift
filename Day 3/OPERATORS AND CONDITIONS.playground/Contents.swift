import UIKit

/*
 
 
 $$$$$$\  $$$$$$$\  $$$$$$$$\ $$$$$$$\   $$$$$$\ $$$$$$$$\  $$$$$$\  $$$$$$$\   $$$$$$\
 $$  __$$\ $$  __$$\ $$  _____|$$  __$$\ $$  __$$\\__$$  __|$$  __$$\ $$  __$$\ $$  __$$\
 $$ /  $$ |$$ |  $$ |$$ |      $$ |  $$ |$$ /  $$ |  $$ |   $$ /  $$ |$$ |  $$ |$$ /  \__|
 $$ |  $$ |$$$$$$$  |$$$$$\    $$$$$$$  |$$$$$$$$ |  $$ |   $$ |  $$ |$$$$$$$  |\$$$$$$\
 $$ |  $$ |$$  ____/ $$  __|   $$  __$$< $$  __$$ |  $$ |   $$ |  $$ |$$  __$$<  \____$$\
 $$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |  $$ |  $$ |   $$ |  $$ |$$ |  $$ |$$\   $$ |
 $$$$$$  |$$ |      $$$$$$$$\ $$ |  $$ |$$ |  $$ |  $$ |    $$$$$$  |$$ |  $$ |\$$$$$$  |
 \______/ \__|      \________|\__|  \__|\__|  \__|  \__|    \______/ \__|  \__| \______/
 
 
 
 $$$$$$\  $$\   $$\ $$$$$$$\
 $$  __$$\ $$$\  $$ |$$  __$$\
 $$ /  $$ |$$$$\ $$ |$$ |  $$ |
 $$$$$$$$ |$$ $$\$$ |$$ |  $$ |
 $$  __$$ |$$ \$$$$ |$$ |  $$ |
 $$ |  $$ |$$ |\$$$ |$$ |  $$ |
 $$ |  $$ |$$ | \$$ |$$$$$$$  |
 \__|  \__|\__|  \__|\_______/
 
 
 
 $$$$$$\   $$$$$$\  $$\   $$\ $$$$$$$\  $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\
 $$  __$$\ $$  __$$\ $$$\  $$ |$$  __$$\ \_$$  _|\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\
 $$ /  \__|$$ /  $$ |$$$$\ $$ |$$ |  $$ |  $$ |     $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
 $$ |      $$ |  $$ |$$ $$\$$ |$$ |  $$ |  $$ |     $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\
 $$ |      $$ |  $$ |$$ \$$$$ |$$ |  $$ |  $$ |     $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\
 $$ |  $$\ $$ |  $$ |$$ |\$$$ |$$ |  $$ |  $$ |     $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
 \$$$$$$  | $$$$$$  |$$ | \$$ |$$$$$$$  |$$$$$$\    $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
 \______/  \______/ \__|  \__|\_______/ \______|   \__|   \______| \______/ \__|  \__| \______/
 
 
 
 
 
*/

///////////////////////////////////////////////////////////////////////////////
/* Arithmetic operators */
// Definition: Are the symbols that represent arithmetic math operations.

let firstScore = 12
let secondScore = 4

// Adding:
let total = firstScore + secondScore

// Subtracting:
let difference = firstScore - secondScore

// Multiplication:
let product = firstScore * secondScore

// Division:
let divid = firstScore / secondScore

// Modulo:
let remainder = 13 % secondScore


///////////////////////////////////////////////////////////////////////////////
/* Operator overloading */
// Definition: A fancy way of saying that what an operator does depends on the values you use it with.

// Example, + sums integers like this:
let firstName = "Jonathan"
let lastName = "Dowdell"

let fullName = firstName + " " + lastName

// The same can be done for arrays:
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf


///////////////////////////////////////////////////////////////////////////////
/* Compound assignment operators */
// Swift has shorthand operators that combine one operator with an assignment, so you can change a variable in place.

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"


///////////////////////////////////////////////////////////////////////////////
/* Comparison operators */
// Swift has several operators that perform comparison, and these work more or less like you would expect in mathematics.

let theFirstScore = 6
let theSecondScore = 4

theFirstScore == secondScore
theFirstScore != secondScore

theFirstScore < theSecondScore
theFirstScore > theSecondScore

"Taylor" <= "Swift"

///////////////////////////////////////////////////////////////////////////////
/* Conditions */
// Now you know some operators you can write conditions using if statements.
// You give Swift a condition, and if that condition is true it will run code of your choosing.

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

///////////////////////////////////////////////////////////////////////////////
/* Combining conditions */
// Swift has two special operators that let us combine conditions together: they are && (pronounced “and”) and || (pronounced “or”).

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

// That print() call will only happen if both ages are over 18, which they aren’t.
// In fact, Swift won’t even bother checking the value of age2 because it can see that age1 already failed the test.

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}


///////////////////////////////////////////////////////////////////////////////
/* The ternary operator */
// Swift has a rarely used operator called the ternary operator.
// It works with three values at once, which is where its name comes from: it checks a condition specified in the first value,
// and if it’s true returns the second value, but if its false returns the third value.

let theFirstCard = 11
let theSecondCard = 10
print(theFirstCard == theSecondCard ? "Cards are the same" : "Cards are different")

// These statements are exactly the same

if theFirstCard == theSecondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}


///////////////////////////////////////////////////////////////////////////////
/* Switch statements */
// If you have several conditions using if and else if, it’s often clearer to use a different construct known as switch case.
// Using this approach you write your condition once, then list all possible outcomes and what should happen for each of them.

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// The last case – default – is required because Swift makes sure you cover all possible cases so that no eventuality is missed off.
// If the weather is anything other than rain, snow, or sun, the default case will be run.

// Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}



///////////////////////////////////////////////////////////////////////////////
/* Switch statements */
// Swift gives us two ways of making ranges: the ..< and ... operators. The half-open range operator, ..<,
// creates ranges up to but excluding the final value, and the closed range operator, ..., creates ranges up to and including the final value.

// For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.

let theScore = 85

switch theScore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
