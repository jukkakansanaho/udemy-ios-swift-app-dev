import UIKit

class ViewController: UIViewController {
    
    let ballArray = [ #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball4") ]
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        imageView.image = ballArray.randomElement()
    }
}

