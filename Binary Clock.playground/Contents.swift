//
//  Binary Clock.swift
//
//
//  Created by Student on 2016-01-06.
//
//

import Foundation

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