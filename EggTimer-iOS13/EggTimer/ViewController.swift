
import UIKit

class ViewController: UIViewController {
    
//    let softTime = 5
//    let mediumTime = 8
//    let hardTime = 12
    let eggTimes : [String : Int] = [
        "Soft": 5 * 60,
        "Medium": 8 * 60,
        "Hard": 12 * 60
    ]
    var timeRemaining = 60
    var timer = Timer()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        
        let hardness = sender.currentTitle! // Soft | Medium | Hard
        
        timeRemaining = eggTimes[hardness]!
        
//        // Option-1: Timer with Closure
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
//            if self.timeRemaining > 0 {
//                print("\(self.timeRemaining) seconds.")
//                self.timeRemaining -= 1
//            } else {
//                timer.invalidate()
//            }
//        }
        // Option-2: Timer with a function
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil,  repeats: true)
        
    }
    
    @objc func updateTimer() {
        if timeRemaining > 0 {
            print("\(timeRemaining) seconds.")
            timeRemaining -= 1
        } else {
            timer.invalidate()
            self.titleLabel.text = "DONE"
            print("DONE")
            
        }
        
        
    }
}
