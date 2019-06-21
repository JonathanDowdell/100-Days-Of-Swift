import UIKit

/*
 
 _______       ___      ____    ____      ______   .__   __.  _______
 |       \     /   \     \   \  /   /     /  __  \  |  \ |  | |   ____|
 |  .--.  |   /  ^  \     \   \/   /     |  |  |  | |   \|  | |  |__
 |  |  |  |  /  /_\  \     \_    _/      |  |  |  | |  . `  | |   __|
 |  '--'  | /  _____  \      |  |        |  `--'  | |  |\   | |  |____
 |_______/ /__/     \__\     |__|         \______/  |__| \__| |_______|
 
 ____    ____      ___      .______       __       ___      .______    __       _______      _______.
 \   \  /   /     /   \     |   _  \     |  |     /   \     |   _  \  |  |     |   ____|    /       |
 \   \/   /     /  ^  \    |  |_)  |    |  |    /  ^  \    |  |_)  | |  |     |  |__      |   (----`
 \      /     /  /_\  \   |      /     |  |   /  /_\  \   |   _  <  |  |     |   __|      \   \
 \    /     /  _____  \  |  |\  \----.|  |  /  _____  \  |  |_)  | |  `----.|  |____ .----)   |
 \__/     /__/     \__\ | _| `._____||__| /__/     \__\ |______/  |_______||_______||_______/
 
 
*/

///////////////////////////////////////////////////////////////////////////////
/* Variables */
// Variables can be created and changed.
// Variables hold different data-types

// Variables are created using "var"
var str = "Hello, playground"

// variables can be re-assigned by calling only the name of the variable
str = "Hello World"

// There are multiple types of values that can be stored in a Variables

///////////////////////////////////////////////////////////////////////////////
/* Strings */

// Short Definition: Words
var string = "Hello Code"

// Multiple-Line strings are created by opening with """ and closed with """
// Opening """ must and closing """ must be on there own line
string = """
One line
Another line
And one more line
"""

// On the other hand if you do not wish to have line breaks include a \ at
// the end of the line
string = """
All on \
one line.
"""

///////////////////////////////////////////////////////////////////////////////
/* Integers */

// Short Definition: Whole Numbers
var integer = 100

// To make more legible the numbers can be seperated with a "_"
// The "_" will not be seen by the compiler
integer = 8_000_000


///////////////////////////////////////////////////////////////////////////////
/* Double */

// Short Definition: Fractional Numbers
var doubles = 3.14159265359

///////////////////////////////////////////////////////////////////////////////
/* Boolean */

// Short Definition: Either True of False
var boolean = true

///////////////////////////////////////////////////////////////////////////////
/* String Interpolation */

// Definition: Placing a value from an variable into a string
// String Interpolation can be used by inserting \() and including the variable
// inside the \(here)
var valueFromDoubleInsideString = "Pie = \(doubles)"


///////////////////////////////////////////////////////////////////////////////
/* Constants (let) */

// Short Definition: Values that can't be changed
let lastName = "Dowdell"

// lastName = "Frank" will throw a error

///////////////////////////////////////////////////////////////////////////////
/* Type Annotation */

// Swift can infer what type of value it hold based on the value
let number = 123

// But you can assign a specific type of value by adding the value type
// after the name
var name:String = "Jonathan"
var oneandone:Double = 1.1
var notTrue:Bool = false
var age:Int = 22

// These can be used to avoid errors

///////////////////////////////////////////////////////////////////////////////





