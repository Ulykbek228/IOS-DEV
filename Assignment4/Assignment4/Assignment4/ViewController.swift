//
//  ViewController.swift
//  Assignment4
//
//  Created by Ulykbek Bulgankhan on 18.10.2025.
//

import UIKit

class ViewController: UIViewController {
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        imageview1.image = UIImage(named: "dice2")
        imageview2.image = UIImage(named: "dice1")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("view появится на экране")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("view dhwh")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view покинут")
    }
    override func viewLayoutMarginsDidChange() {
        print("viewLayoutMarginsDidChange")
    }
    @IBOutlet weak var imageview1: UIImageView!
    @IBOutlet weak var imageview2: UIImageView!
    @IBAction func rollDice(_ sender: UIButton) {
        imageview1.image = UIImage(named: diceImages[Int(arc4random_uniform(6))])
        imageview2.image = UIImage(named: diceImages[Int(arc4random_uniform(6))])
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            imageview1.image = UIImage(named: diceImages[Int(arc4random_uniform(6))])
            imageview2.image = UIImage(named: diceImages[Int(arc4random_uniform(6))])
        }
    }
}
    

