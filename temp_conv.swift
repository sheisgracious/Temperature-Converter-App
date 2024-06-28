//
//  temp_conv.swift
//
//  Created by Gracious Ogyiri Asare on 6/28/24.
//
import Foundation

func toCelcius(num: Double) -> Double {        //convert num in Fahrenheit to Celcius
    return (num - 32)*(5/9)
}

func toFahrenheit(num: Double) -> Double {    //convert num in Fahrenheit to Celcius
    return (num * (9/5) + 32)
}

print("Hi there! Enter 'C' to convert to Celcius or 'F' to convert to Fahrenheit:")
if let deg = readLine() {         //prompt use input to check unit of measurement
    if deg == "C" {               
        print("\nEnter temperature in Celcius:")
        if let temp = readLine(), let value = Double(temp) {    //checks if input is a float
            let result = Int(toCelcius(num: value))     //converts input to Fahrenheit           
            print("\n\(temp) degrees Celsius is about \(result) degrees Fahrenheit\n")
        }
    } else if deg == "F" {
        print("\nEnter temperature in Fahrenheit")
        if let temp = readLine(), let value = Double(temp) {
            let result = Int(toFahrenheit(num: value))    //converts input to Celsius  
            print("\n\(temp) degrees Fahrenheit is about \(result) degrees Celcius\n")
    } else {
        print("Failed. Input doesn't match 'C' or 'F'.")
    }} else {
     print("Not 'C' or 'F'.")
    }}