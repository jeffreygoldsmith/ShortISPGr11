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

var binaryHours = String(hours, radix: 2)   //  decimal time in binary
var binaryMinutes = String(minutes, radix: 2)
var binarySeconds = String(seconds, radix: 2)

//
// Function to pad binary time number with zeros.
//

func pad(time: String, toSize: Int) -> String
{
    var padded = time
    for(var i = padded.characters.count;i < toSize; i++)
    {
        padded = "0" + padded
    }
    return padded
}

binaryHours = pad(binaryHours, toSize: 5)   // Pad binary numbers with zeros
binaryMinutes = pad(binaryMinutes, toSize: 6)
binarySeconds = pad(binarySeconds, toSize: 6)

// Create a new canvas
let canvas = Canvas(width: 400, height: 400)

//
// Draw background.
//

canvas.fillColor = Color(hue: 215, saturation: 30, brightness: 60, alpha: 100)
canvas.drawRectangle(bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)

//
// Display binary time.
//

canvas.textColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100) // Colour text white

canvas.drawText(message: "Hours    :   " + binaryHours, size: 35, x: 75, y: 300)
canvas.drawText(message: "Minutes : " + binaryMinutes, size: 35, x: 75, y: 200)
canvas.drawText(message: "Seconds: " + binarySeconds, size: 35, x: 75, y: 100)


canvas




