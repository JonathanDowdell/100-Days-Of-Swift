import UIKit

/*
 
 
 $$$$$$$$\ $$\   $$\ $$\   $$\  $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\
 $$  _____|$$ |  $$ |$$$\  $$ |$$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\
 $$ |      $$ |  $$ |$$$$\ $$ |$$ /  \__|  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
 $$$$$\    $$ |  $$ |$$ $$\$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\
 $$  __|   $$ |  $$ |$$ \$$$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\
 $$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$\   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
 $$ |      \$$$$$$  |$$ | \$$ |\$$$$$$  |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
 \__|       \______/ \__|  \__| \______/   \__|   \______| \______/ \__|  \__| \______/
 
 
 
 
 
*/

///////////////////////////////////////////////////////////////////////////////
/* Functions */
// Functions let us re-use code, which means we can write a function to do something
// interesting then run that function from lots of places. Repeating code is generally
// a bad idea, and functions help us avoid doing that.

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

// We can now run that using printHelp() by itself:
printHelp()


///////////////////////////////////////////////////////////////////////////////
/* Accepting parameters */
// Functions become more powerful when they can be customized each time you run them.
// Swift lets you send values to a function that can then be used inside the function to change the way it behaves.
// We’ve used this already – we’ve been sending strings and integers to the print() function, like this:

print("Hello, world!")

func square(number: Int) {
    print(number * number)
}

square(number: 8)

///////////////////////////////////////////////////////////////////////////////
/* Returning values */
// Inside your function, you use the return keyword to send a value back if you have one.
// Your function then immediately exits, sending back that value – no other code from that function will be run.

func square2(number: Int) -> Int {
    return number * number
}

// Now we can grab that return value when the function is run, and print it there:

let result = square2(number: 8)
print(result)

// If you need to return multiple values, this is a perfect example of when to use tuples.


///////////////////////////////////////////////////////////////////////////////
/* Parameter labels */
// Swift lets us provide two names for each parameter: one to be used externally when calling the
// function, and one to be used internally inside the function. This is as simple as writing two names, separated by a space.

// To demonstrate this, here’s a function that uses two names for its string parameter:

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")


///////////////////////////////////////////////////////////////////////////////
/* Omitting parameter labels */
// You might have noticed that we don’t actually send any parameter names
// when we call print() – we say print("Hello") rather than print(message: "Hello").

// You can get this same behavior in your own functions by using an underscore, _, for your external parameter name, like this:
func greet(_ person: String) {
    print("Hello, \(person)!")
}

// You can now call greet() without having to use the person parameter name:

greet("Taylor")


///////////////////////////////////////////////////////////////////////////////
/* Default parameters */
// You can give your own parameters a default value just by writing an = after its type followed
// by the default you want to give it. So, we could write a greet() function that can optionally print nice greetings:

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

// That can be called in two ways:

greet("Taylor")
greet("Taylor", nicely: false)



///////////////////////////////////////////////////////////////////////////////
/* Variadic functions */
// Some functions are variadic, which is a fancy way of saying they accept any number of
// parameters of the same type. The print() function is actually variadic: if you pass lots of parameters,
// they are all printed on one line with spaces between them:

print("Haters", "gonna", "hate")

// You can make any parameter variadic by writing ... after its type. So, an Int parameter is a
// single integer, whereas Int... is zero or more integers – potentially hundreds.

// To try this out, let’s write a square() function that can square many numbers:

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

// Now we can run that with lots of numbers just by passing them in separated by commas:

square(numbers: 1, 2, 3, 4, 5)


///////////////////////////////////////////////////////////////////////////////
/* Writing throwing functions */
// Sometimes functions fail because they have bad input, or because something went wrong internally.
// Swift lets us throw errors from functions by marking them as throws before their return type, then using the throw keyword when something goes wrong.

enum PasswordError: Error {
    case obvious
}

// Now we’ll write a checkPassword() function that will throw that error if something goes wrong.
// This means using the throws keyword before the function’s return value, then using throw PasswordError.obvious if their password is “password”.

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}


///////////////////////////////////////////////////////////////////////////////
/* Running throwing functions */
// Swift doesn’t like errors to happen when your program runs, which means
// it won’t let you run an error-throwing function by accident.
// Instead, you need to call these functions using three new keywords: do starts a section of code that might
// cause problems, try is used before every function that might throw an error, and catch lets you handle errors gracefully.
// If any errors are thrown inside the do block, execution immediately jumps to the catch block.
// Let’s try calling checkPassword() with a parameter that throws an error:

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


///////////////////////////////////////////////////////////////////////////////
/* inout parameters */
// All parameters passed into a Swift function are constants, so you can’t change them.
// If you want, you can pass in one or more parameters as inout, which means they can be changed inside your
// function, and those changes reflect in the original value outside the function.

func doubleInPlace(number: inout Int) {
    number *= 2
}

// Don't use let

var myNum = 10
doubleInPlace(number: &myNum)





