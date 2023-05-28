import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyCPress(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    
    func playSound(soundName: String) {
        let second: Double = 1000000
        usleep(useconds_t(0.2 * second)) 
        guard let path = Bundle.main.path(forResource: soundName, ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)
        
        player = try! AVAudioPlayer(contentsOf: url)
        player?.play()
        
    }
}
