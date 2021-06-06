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

// Coding Exercise 4: Randomization
func exercise() {
    
    
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    //The number of letters in alphabet equals 26
    let a = alphabet[Int.random(in: 0...25)]
    let b = alphabet[Int.random(in: 0...25)]
    let c = alphabet[Int.random(in: 0...25)]
    let d = alphabet[Int.random(in: 0...25)]
    let e = alphabet[Int.random(in: 0...25)]
    let f = alphabet[Int.random(in: 0...25)]
    let password = a + b + c + d + e + f

    print(password)
    
}
exercise()
