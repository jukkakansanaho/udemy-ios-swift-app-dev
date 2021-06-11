/*
 NOTE:
 - Stack Overflow for Audio playback hints: https://stackoverflow.com/questions/32036146/how-to-play-a-sound-using-swift
 - Apple docs for Audio playback:
    - https://developer.apple.com/documentation/avfoundation/
    - https://developer.apple.com/documentation/avfoundation/audio_playback_recording_and_processing
 - Apple Docs for Bundle: https://developer.apple.com/documentation/foundation/bundle/
 - Apple Docs for AVAudioSession: https://developer.apple.com/documentation/avfaudio/avaudiosession/
 */

import UIKit
import AVFoundation

//var player: AVAudioPlayer?
var player: AVAudioPlayer!

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        // Play sound related to specific letter (Button's title)
        playSound(soundName: sender.currentTitle!)
        
        // Modifies sender's opacity by 50%
        sender.alpha = 0.5
        
        // Specific code that is executes after the specified delay (0.2s)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
        
    }
    
//    NOTE: See below example code from Stack Overflow:
//    func playSound() {
//        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
//
//        do {
//            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
//            try AVAudioSession.sharedInstance().setActive(true)
//
//            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//
//
//            guard let player = player else { return }
//
//            player.play()
//
//        } catch let error {
//            print(error.localizedDescription)
//        }
//    }
    
//    NOTE: See below (simplified) example code:
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

