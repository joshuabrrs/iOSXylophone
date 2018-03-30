import AVFoundation
import UIKit

class ViewController: UIViewController{
   
    var xylophoneSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note1", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
     
        print(sender.tag)
        
    }
    
  

}

