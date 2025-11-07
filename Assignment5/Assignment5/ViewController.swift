//
//  ViewController.swift
//  Assignment5
//
//  Created by Ulykbek Bulgankhan on 19.10.2025.
//

import UIKit

struct Item {
    let imageName: String
    let title: String
}

class ViewController: UIViewController {
    let items = [
        Item(imageName: "image1", title: "angry"),
        Item(imageName: "image2", title: "eating"),
        Item(imageName: "image3", title: "glasses"),
        Item(imageName: "image4", title: "hog"),
        Item(imageName: "image5", title: "interesting"),
        Item(imageName: "image6", title: "larry"),
        Item(imageName: "image7", title: "like"),
        Item(imageName: "image8", title: "princess"),
        Item(imageName: "image9", title: "sucks"),
        Item(imageName: "image10", title: "toxic"),
     ]
    override func viewDidLoad() {
        super.viewDidLoad()
        appTitleLabel.text = "Randomizer"
        itemTitleLabel.text = "НАЖМИ КНОПКУ СНИЗУ"
    }
    @IBOutlet weak var appTitleLabel: UILabel!
    
    @IBOutlet weak var itemTitleLabel: UILabel!
   
    
    @IBOutlet weak var itemImageView: UIImageView!
    
    @IBAction func randomizer(_ sender: UIButton) {
        let randomIndex = Int.random(in: 0..<items.count)
        let randomItem = items[randomIndex]
        
        itemImageView.image = UIImage(named: randomItem.imageName)
        itemTitleLabel.text = randomItem.title
    
    }
}
