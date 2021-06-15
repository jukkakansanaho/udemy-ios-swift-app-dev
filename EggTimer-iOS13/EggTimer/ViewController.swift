
import UIKit

class ViewController: UIViewController {
    
//    let softTime = 5
//    let mediumTime = 8
//    let hardTime = 12
    let eggTimes : [String : Int] = [
        "Soft": 5,
        "Medium": 8,
        "Hard": 12
    ]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle! // Soft | Medium | Hard
        
//        if hardness == "Soft" {
//            print(softTime)
//        } else if hardness == "Medium" {
//            print(mediumTime)
//        } else if hardness == "Hard" {
//            print(hardTime)
//        } else {
//            print("Wrong hardness selected...")
//        }
        let result = eggTimes[hardness]!
        print(result)
            
    }
    
}
