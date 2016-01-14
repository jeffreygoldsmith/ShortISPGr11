import Cocoa

//
//  Binary Clock.swift
//
//
//  Created by Student on 2016-01-06.
//
//

import Cocoa

let date = NSDate()     // Get local time data from computer
let calendar = NSCalendar.currentCalendar()

let components = calendar.components([ .Hour, .Minute, .Second], fromDate: date)    // Take system time and set variables to be equal to current component
let hours = components.hour
let minutes = components.minute
let seconds = components.second
var prevSeconds = seconds

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

binaryHours = pad(binaryHours, toSize: 4)   // Pad binary numbers with zeros
binaryMinutes = pad(binaryMinutes, toSize: 6)
binarySeconds = pad(binarySeconds, toSize: 6)

// Create a new canvas
let canvas = Canvas(width: 400, height: 400)

canvas.drawText(message: "Hours     :     " + binaryHours, size: 35, x: 40, y: 300)
canvas.drawText(message: "Minutes  : " + binaryMinutes, size: 35, x: 40, y: 200)
canvas.drawText(message: "Seconds : " + binarySeconds, size: 35, x: 40, y: 100)


canvas




