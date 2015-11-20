//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Test 

struct Change {
    var quarter: Double
    var dime: Double
    var nickel: Double
    var penny: Double
}
//Always Declare Struct and Enum with Captial letters
struct Constant {
    //you can access these w/o a declaration
    static let numberOfCentsInADollar = 100.0
    static let quarter = 25.0
    static let dime = 10.0
    static let nickel = 5.0
    static let penny = 1.0
}

func test (userChange: Double) -> (Change) {
    //
    /*var change = Change(quarter: <#T##Int#>, dime: <#T##Int#>, nickel: <#T##Int#>, penny: <#T##Int#>)*/
    
    var QC = 0.0
    var DC = 0.0
    var NC = 0.0
    var PV = 0.0
    
    //var numberOfCents = 7573
    var numberOfCents = Constant.numberOfCentsInADollar * (userChange)
    let typesOC  = [Constant.quarter, Constant.dime, Constant.nickel, Constant.penny]
    
    for coin in typesOC {
        //You always have to switch on something
        switch coin {
            //The colon must always be after the case
        case Constant.quarter:
            //Always have a space
            QC = numberOfCents / Constant.quarter
            numberOfCents = numberOfCents % Constant.quarter
        case Constant.dime:
            DC = numberOfCents / Constant.dime
            numberOfCents = numberOfCents % Constant.dime
        case Constant.nickel:
            NC = numberOfCents / Constant.nickel
            numberOfCents = numberOfCents % Constant.nickel
        case Constant.penny:
            PV = numberOfCents / Constant.penny
            numberOfCents = numberOfCents % Constant.penny
        default: break
        }
        //Common mistake you make, you don't check for the end
        //of the for loop
    }
    return Change(quarter: QC, dime: DC, nickel: NC, penny: PV)

}

var change = test(75.73)
change.quarter
change.dime

func caesarCypher(text:String, shiftNumber:Int) -> String {
    var encryptedText = ""
    
    let upperCaseArray:[String] = ["A","B", "C", "D", "E", "F", "G", "H", "I,", "K", "L", "M", "N", "O", "P", "Q", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    let lowerCaseArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    //You forgot characters
    for char in text.characters {
        //check if character is uppercase
        //This syntax "\(char)" converts string
        if let charIndex = upperCaseArray.indexOf("\(char)"){
            let newIndex = charIndex + shiftNumber
            //Here we're returning the position of the new char
            let newChar = upperCaseArray[newIndex]
            encryptedText += newChar
        } else if let charIndex = lowerCaseArray.indexOf("\(char)") {
            let newIndex = charIndex + shiftNumber
            let newChar = lowerCaseArray[newIndex]
            encryptedText += newChar
        } else {
            //The char
            encryptedText.append(char)
        }
        
    }
    return encryptedText
}

var encryptedTextFunc = caesarCypher("Love", shiftNumber: 2)

//Fred, Barnie, Wilma, BarnieWife, BamBam, Pebbles
//Shuffle the code... an array of anything 52 CARDS 30 words, deck of numbers, and reorder
//them, without any repeats

//Accept an array 





