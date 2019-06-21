import UIKit

/*
 
 
 
 ______    ______   __       __  _______   __        ________  __    __        ________  __      __  _______   ________   ______
 /      \  /      \ /  \     /  |/       \ /  |      /        |/  |  /  |      /        |/  \    /  |/       \ /        | /      \
 /$$$$$$  |/$$$$$$  |$$  \   /$$ |$$$$$$$  |$$ |      $$$$$$$$/ $$ |  $$ |      $$$$$$$$/ $$  \  /$$/ $$$$$$$  |$$$$$$$$/ /$$$$$$  |
 $$ |  $$/ $$ |  $$ |$$$  \ /$$$ |$$ |__$$ |$$ |      $$ |__    $$  \/$$/          $$ |    $$  \/$$/  $$ |__$$ |$$ |__    $$ \__$$/
 $$ |      $$ |  $$ |$$$$  /$$$$ |$$    $$/ $$ |      $$    |    $$  $$<           $$ |     $$  $$/   $$    $$/ $$    |   $$      \
 $$ |   __ $$ |  $$ |$$ $$ $$/$$ |$$$$$$$/  $$ |      $$$$$/      $$$$  \          $$ |      $$$$/    $$$$$$$/  $$$$$/     $$$$$$  |
 $$ \__/  |$$ \__$$ |$$ |$$$/ $$ |$$ |      $$ |_____ $$ |_____  $$ /$$  |         $$ |       $$ |    $$ |      $$ |_____ /  \__$$ |
 $$    $$/ $$    $$/ $$ | $/  $$ |$$ |      $$       |$$       |$$ |  $$ |         $$ |       $$ |    $$ |      $$       |$$    $$/
 $$$$$$/   $$$$$$/  $$/      $$/ $$/       $$$$$$$$/ $$$$$$$$/ $$/   $$/          $$/        $$/     $$/       $$$$$$$$/  $$$$$$/
 
 
 
 
*/

///////////////////////////////////////////////////////////////////////////////
/* Arrays */
// Definition: Collections of values that are stored as a single value.

let dayOne = "Monday"
let dayTwo = "Tuesday"
let dayThree = "Wednesday"
let dayFour = "Thursday"
let dayFive = "Friday"

let daysOfTheWeek = [dayOne,dayTwo,dayThree,dayFour,dayFive]

// To access a specific value use the index of the value in brackets array[number]
daysOfTheWeek[4] // -> Friday
// Rather starting at 1 arrays start at 0
daysOfTheWeek[0] // -> Monday

// To Create Empty Arrays:
var emptyArray = [Int]()



///////////////////////////////////////////////////////////////////////////////
/* Sets */
// Definition: Whole values just like arrays but are unordered and cannot have duplicates

let colors = Set(["Red","Green","Blue"])

// Sets are inaccessible using [index]. But can be looped thru using loops


///////////////////////////////////////////////////////////////////////////////
/* Tuples */
// Definition: Hold values like arrays but unlike arrays you can't
// 🔸 You can’t add or remove items from a tuple; they are fixed in size.
// 🔸 You can’t change the type of items in a tuple; they always have the same types they were created with.
// 🔸 You can access items in a tuple using numerical positions or by naming them,
//    but Swift won’t let you read numbers or names that don’t exist.

let myName = (firstName: "Jonathan", lastName: "Dowdell")

// Tuples can be accessed by number of value title
myName.firstName // Jonathan
myName.1 // Dowdell

// And like arrays they start at 0


///////////////////////////////////////////////////////////////////////////////
/* Arrays vs Sets vs Tuples */

// If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let address = (addressNumber:748, street:"Croster Road", city:"Montgomery", state:"AL", country:"USA")

// If you need a collection of values that must be unique or you need to be able to check whether a specific
// item is in there extremely quickly, you should use a set:
let set = Set(["aardvark", "astronaut", "azalea"])

// If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Arrays are used the most


///////////////////////////////////////////////////////////////////////////////
/* Dictionaries */
// Definition: Collections of values just like arrays, but rather than storing things
// with an integer position you can access them using anything you want.

let ages = [
    "Jonathan" : 22,
    "Melanie" : 20,
    "Sylvester" : 65,
    "Tianna" : 58
]

// Un-like arrays dictionaries are accessed using the key id in brackets
ages["Jonathan"] // 22

// If you attempt to access a value that doesn't exist you will get Nil, which can cause your program to crash
// As a safety measure you can assign dictionaries a default value if you try to access a key id that doesn't exist
ages["Frank", default: 00]

// Empty Dictionary:
var emptyDict = [String:Int]()


///////////////////////////////////////////////////////////////////////////////
/* Enumeration */
// Definition: Usually called just enums – are a way of defining groups of related values in a way that makes them easier to use.

enum Results {
    case worked
    case didntWork
}

var finishedResult = Results.worked


if finishedResult == Results.didntWork {
    // Do this
} else if finishedResult == Results.worked {
    // Do this
}

// This stops you from accidentally using different strings each time.

// As well as storing a simple value, enums can also store associated values attached to each case.
// This lets you attach additional information to your enums so they can represent more nuanced data.

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Sometimes you need to be able to assign values to enums so they have meaning.
// This lets you create them dynamically, and also use them in different ways.

// If you want, you can assign one or more cases a specific value, and Swift will generate the rest.
// It’s not very natural for us to think of Earth as the second planet, so you could write this:

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

// Now Swift will assign 1 to mercury and count upwards from there, meaning that earth is now the third planet.


