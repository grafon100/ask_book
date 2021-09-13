//
//  ViewController.swift
//  ask_book
//
//  Created by grafon100 on 18/08/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var player: AVAudioPlayer!
    var player2: AVAudioPlayer!
    
    @IBOutlet weak var bookImage: UIImageView!
    
    @IBOutlet weak var textAnswer: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBook()
        playSound2()
    }
    
    
    func playSound() {
        let url = Bundle.main.url(forResource: "shot", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func playSound2() {
        let url = Bundle.main.url(forResource: "backgroundsound", withExtension: "mp3")
        player2 = try! AVAudioPlayer(contentsOf: url!)
        player2.play()
    }
    
    
    

    
    @IBAction func changeText(_ sender: UIButton) {
        
        let arrayText = ["YES", "NO", "MAYBE", "NO DOUBT ABOUT IT", "ABSOLUTELY", "THE STARS SAY NO", "SO IT SHALL BE", "UNLIKELY", "INDICATIONS SAY YES", "POSITIVELY", "YOU CAN COUNT ON IT", "ANSWER UNCLEAR ASK LATER", "DON'T BET ON IT", "LOOKS LIKE YES", "CHANCE AREN'T GOOD", "FOCUS AND ASK AGAIN", "CAN'T SAY NOW", "PROSPECT GOOD", "VERY LIKELY", "CONSULT ME LATER", "CANNOT FORETELL NOW"]
        if bookImage.image == #imageLiteral(resourceName: "clouse_book") {
            playSound()
            bookImage.image = #imageLiteral(resourceName: "open_book")
            textAnswer.text = arrayText.randomElement()
        } else {
            setBook()
        }
        
    }
    
    @IBAction func resetAsk(_ sender: UIButton) {
        setBook()
    }
    
    func setBook(){
        self.bookImage.image = #imageLiteral(resourceName: "clouse_book")
        self.textAnswer.text = "ASK Me"
    }
    
    
    
}

