//// This is a comment
//print("Hello World")
//
///* sddsf
// sd
// f
// sdf
// sd
// f*/
//print("Hello \(2+5) World")
// --------------------------------
// Coding Exercise 2: Arrays
//func exercise() {
//
//    let numbers = [45, 73, 195, 53]
//
//    //Write your code here
//    let computedNumbers = [ numbers[0]*numbers[1], numbers[1]*numbers[2], numbers[2]*numbers[3], numbers[3]*numbers[0] ]
//
//
//    print(computedNumbers)
//
//}
// exercise()

// Coding Exercise 3: Contants
//func exercise() {
//
//    let secondsInAnHour : Int = 60 * 60
//
//    //Don't change the code below.
//    print(secondsInAnHour)
//
//}
//exercise()
// --------------------------------
// Coding Exercise 4: Randomization
//func exercise() {
//
//
//    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//
//    //The number of letters in alphabet equals 26
//    let a = alphabet[Int.random(in: 0...25)]
//    let b = alphabet[Int.random(in: 0...25)]
//    let c = alphabet[Int.random(in: 0...25)]
//    let d = alphabet[Int.random(in: 0...25)]
//    let e = alphabet[Int.random(in: 0...25)]
//    let f = alphabet[Int.random(in: 0...25)]
//    let password = a + b + c + d + e + f
//
//    print(password)
//
//}
//exercise()
// --------------------------------
////Coding Exercise 5: Functions
//func calculator() {
////  let a = Int(readLine()!)! //First input
////  let b = Int(readLine()!)! //Second input
//    let a = Int(3) //First input
//    let b = Int(4) //Second input
//
//  add(n1: a, n2: b)
//  subtract(n1: a, n2: b)
//  multiply(n1: a, n2: b)
//  divide(n1: a, n2: b)
//
//}
//
//func add(n1: Int, n2: Int) {
//    print(n1 + n2)
//}
//
//func subtract(n1: Int, n2: Int)  {
//    print(n1 - n2)
//}
//
//func multiply(n1: Int, n2: Int) {
//    print(n1 * n2)
//}
//
//func divide(n1: Int, n2: Int) {
//    print( Double(n1) / Double(n2) )
//}
//
//calculator()
// --------------------------------
////Coding Exercise 6: IF/ELSE
//func isLeap(year: Int) {
//
//    if (year % 4 == 0) && (year % 100 == 0) && (year % 400 == 0) {
//        print("\(year): YES")
//    } else if (year % 4 == 0) && (year % 100 == 0) {
//        print("\(year): NO")
//    } else if year % 4 == 0 {
//        print("\(year): YES")
//    } else {
//        print("\(year): NO")
//    }
//
//}
//isLeap(year: 1200)
//isLeap(year: 1257)
//isLeap(year: 1997)
//isLeap(year: 2000)
//isLeap(year: 2100)

// --------------------------------
//Coding Exercise 7: Switch
//func dayOfTheWeek(day: Int) {
//
//    switch day {
//    case 1:
//        print("Monday")
//    case 2:
//        print("Tuesday")
//    case 3:
//        print("Wednesday")
//    case 4:
//        print("Thursday")
//    case 5:
//        print("Friday")
//    case 6:
//        print("Saturday")
//    case 7:
//        print("Sunday")
//    default:
//        print("Error")
//    }
//
//}
//dayOfTheWeek(day: 1)

// --------------------------------
//Coding Exercise 8: Dictionary
func exercise() {

    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc"
    ]
    
    stockTickers["WORK"] = "Slack Technologies Inc"
    stockTickers["BOOM"] = "DMC Global Inc"
    
     //Don't modify this
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
}
exercise()
