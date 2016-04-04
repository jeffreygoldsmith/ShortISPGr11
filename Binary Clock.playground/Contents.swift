import Foundation
import XCPlayground

/*
* Name : Jeffrey Goldsmith
* Date : 4 April 2016
* Teacher : Mr. Gordon
* Class : ICS3U
*/

let hourLength = 5 // Length of binary values (H/M/S)
let minuteLength = 6
let secondLength = 6

var hourOutput = "" // Empty strings to contain output values
var minuteOutput = ""
var secondOutput = ""

var uTime = Int(NSDate().timeIntervalSince1970) - 3600 * 4 // Set unixtime value to be system unixtime with timezone offset


//
// Function to decode decimal time to binary and pad with zeros.
//
func decode(length: Int, type: Int, var output: String) -> String
{
    var input = type
    
    //
    // Loop through decimal number until binary number is complete.
    //
    for (var i = 0; i < length; i++)
    {
        let bit = input % 2
        input /= 2
        let bitString = String(bit)
        output.insert(Character(bitString), atIndex: output.startIndex)
    }
    
    return output
}


XCPSetExecutionShouldContinueIndefinitely()

//
// BinaryClock -- Class to manage timer subroutine and time increment.
//
class BinaryClock
{
    //
    // BinaryClock -- startTimer() Function to initialize timer with one second interval.
    //
    func startTimer()
    {
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onTimer:", userInfo: nil, repeats: true) // Create new timer with one second interval
    }

    
    //
    // BinaryClock -- onTimer() Timer subroutine to increment and print updated binary time to console.
    //
    @objc func onTimer(timer:NSTimer!)
    {
        uTime++ // Increment time
        
        var uClone = uTime // Set new time value
        
        let seconds = uClone % 60 // Calculate seconds
        uClone /= 60
        
        let minutes = uClone % 60 // Calculate minutes
        uClone /= 60
        
        let hours = uClone % 24 // Calculate hours

        
        print(decode(hourLength, type: hours, output: hourOutput)) // Print hours
        print(decode(minuteLength, type: minutes, output: minuteOutput)) // Print minutes
        print(decode(secondLength, type: seconds, output: secondOutput)) // Print seconds
        print("") // Print new line
    }
}

var clock = BinaryClock() // Create new instance of BinaryClock class

clock.startTimer() // Start timer subroutine



