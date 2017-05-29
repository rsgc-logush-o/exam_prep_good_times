import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var inputToProcess : Int? = nil

struct City
{
    var name : String
    var timeOffset : Int
    
}

var times = [Int]()
var cities = [City]()

cities.append(City(name: "Ottawa", timeOffset: 0))
cities.append(City(name: "Victoria", timeOffset: -300))
cities.append(City(name: "Edmonton", timeOffset: -200))
cities.append(City(name: "Winnipeg", timeOffset: -100))
cities.append(City(name: "Toronto", timeOffset: 0))
cities.append(City(name: "Halifax", timeOffset: 100))
cities.append(City(name: "St. John's", timeOffset: 130))

// Loop until valid input is received
while inputToProcess == nil {
    
    // Show the prompt
    
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = Int(input!) {
        
        if notNilInput < 2400 && notNilInput > -1 && notNilInput % 100 < 60
        {
           inputToProcess = notNilInput
        }else{
            print("Please enter a valid input between 0 and 2059")
        }
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
    }else{
        print("Please enter a valid input between 0 and 2059")
    }
    
    
    
}

for i in cities
{
    var bufferTime = inputToProcess
    var bufferMinutes : Int
    
    bufferTime = bufferTime! + i.timeOffset
    bufferMinutes = bufferTime! % 100
    bufferTime = bufferTime! + (bufferMinutes / 60) * 100
    bufferTime = bufferTime! - bufferMinutes
    bufferMinutes = bufferMinutes % 60
    bufferTime = bufferTime! + bufferMinutes
    bufferTime = bufferTime! + 2400
    bufferTime = bufferTime! % 2400

    
    
    times.append(bufferTime!)
}

for i in 0...6
{
    print("\(times[i]) in \(cities[i].name)")
}


/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'process' code below....
print("replace with process logic")


/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
print("The input given was: \(inputToProcess)")
