import UIKit
import AVFoundation

struct TrackItem {
    let title: String
    let artist: String
    let imageName: String
    let soundFileName: String
}
var player: AVAudioPlayer?
    var currentIndex: Int = 0
class ViewController: UIViewController {
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var playPauseButton: UIButton!
    
    private var audioPlayer: AVAudioPlayer?
    private var currentIndex: Int = 0
    
    let titles = [
            "Paranoid Android",
            "As",
            "Roses",
            "IFHY",
            "Jukebox"
        ]
        
        let artists = [
            "Radiohead",
            "Stevie Wonder",
            "Kanye West",
            "Tyler, The Creator",
            "Example Artist"
        ]
        
        let imageNames = [
            "ok",
            "ass",
            "rosess",
            "ifhys",
            "jukeboxs"
        ]
        
        let soundNames = [
            "paranoid",
            "as",
            "Roses",
            "ifhy",
            "jukebox"
        ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showCurrentTrack()
               playPauseButton.setTitle("Play", for: .normal)
    }
        
    private func showCurrentTrack() {
           titleLabel.text = titles[currentIndex]
           artistLabel.text = artists[currentIndex]
           coverImageView.image = UIImage(named: imageNames[currentIndex])
       }
        
    private func playSound(name: String) {
            guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
                return
            }
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
            playPauseButton.setTitle("Pause", for: .normal)
        }
    
    
    @IBAction func playPauseTapped(_ sender: UIButton) {
        if let p = player {
            if p.isPlaying {
                p.pause()
                playPauseButton.setTitle("Play", for: .normal)
            } else {
                p.play()
                playPauseButton.setTitle("Pause", for: .normal)
            }
        } else {
            let soundName = soundNames[currentIndex]
            playSound(name: soundName)
        }
    }
    
    @IBAction func nextTapped(_ sender: UIButton) {
    currentIndex += 1
        if currentIndex >= titles.count {
            currentIndex = 0
                }
    showCurrentTrack()
        let soundName = soundNames[currentIndex]
                playSound(name: soundName)
            }
    
    @IBAction func previousTapped(_ sender: UIButton) {
    currentIndex -= 1
    if currentIndex < 0 {
        currentIndex = titles.count - 1
                }
            showCurrentTrack()
        let soundName = soundNames[currentIndex]
            playSound(name: soundName)
            }
        }
