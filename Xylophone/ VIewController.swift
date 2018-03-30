import UIKit
import AVFoundation
class ViewController: UIViewController, AVAudioPlayerDelegate{
   
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        var selectedSoundFileName : String = soundArray[sender.tag-1]
        print(selectedSoundFileName)
        playSound()
     
    }
    
  
    func playSound(){
        let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
            //what happens when there is an error
        catch{
            print(error)
        }
        audioPlayer.play()
    }
}

