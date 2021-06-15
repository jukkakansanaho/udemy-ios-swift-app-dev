
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
//    let softTime = 5
//    let mediumTime = 8
//    let hardTime = 12
    let eggTimes : [String : Int] = [
        "Soft": 3, //5 * 60,
        "Medium": 4, //8 * 60,
        "Hard": 7 //12 * 60
    ]
    var timer = Timer()
    var player: AVAudioPlayer!
    var totalTime = 0
    var secondsPassed = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle! // Soft | Medium | Hard
        totalTime = eggTimes[hardness]!
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
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
        if secondsPassed < totalTime {
            secondsPassed += 1
            print("\(secondsPassed)/\(totalTime) sec. passed.")
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        } else {
            playSound(soundName: "alarm_sound")
            timer.invalidate()
            self.titleLabel.text = "DONE"
            print("DONE")
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
