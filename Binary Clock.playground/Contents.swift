import Cocoa

/*
 * Name : Jeffrey Goldsmith
 * Date : Sunday, January 17, 2016
 * Teacher : Mr. Gordon
 * Class : ICS3U
 */

import Cocoa

let date = NSDate()     // Get local time data from computer
let calendar = NSCalendar.currentCalendar()

let components = calendar.components([ .Hour, .Minute, .Second], fromDate: date)    // Take system time and set variables to be equal to current component
let hours = components.hour
let minutes = components.minute
let seconds = components.second

let hourLength = 5
let minuteLength = 6
let secondLength = 6

var hourOuput = ""
var minuteOutput = ""
var secondOutput = ""

func decode(length: Int, type: Int, var output: String) -> String
{
    var input = type
    
    for (var i = 0; i < length; i++)
    {
        let bit = input % 2
        input /= 2
        let bitString = String(bit)
        output.insert(Character(bitString), atIndex: output.startIndex)
    }
    
    return output
}

decode(hourLength, type: hours, output: hourOuput)
decode(minuteLength, type: minutes, output: minuteOutput)
decode(secondLength, type: seconds, output: secondOutput)


//// Create a new canvas
//let canvas = Canvas(width: 400, height: 400)
//
////
//// Draw background.
////
//
//canvas.fillColor = Color(hue: 215, saturation: 30, brightness: 60, alpha: 100)
//canvas.drawRectangle(bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)
//
////
//// Display binary time.
////
//
//canvas.textColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100) // Colour text white
//
//canvas.drawText(message: "Hours    :   " + binaryHours, size: 35, x: 75, y: 300)
//canvas.drawText(message: "Minutes : " + binaryMinutes, size: 35, x: 75, y: 200)
//canvas.drawText(message: "Seconds: " + binarySeconds, size: 35, x: 75, y: 100)

//canvas
//
//let test = "testout"
//var number = 16
//var reverseOutput = ""
//
//for (var i = 0; i < 6; i++)
//{
//    var bit = number % 2
//    number /= 2
//    output += String(bit)
//}
//
//for index in output.characters.indices
//{
//    var iChar = output[index]
//    reverseOutput.insert(iChar, atIndex: reverseOutput.startIndex)
//}




