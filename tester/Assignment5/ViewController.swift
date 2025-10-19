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
        Item(imageName: "image1", title: "angry\nhe is very angry at you"),
        Item(imageName: "image2", title: "eating\ngiant likes to eat"),
        Item(imageName: "image3", title: "glasses\nbro think he is cool"),
        Item(imageName: "image4", title: "hog\nscreaming like a pig"),
        Item(imageName: "image5", title: "interesting\nsaw something new"),
        Item(imageName: "image6", title: "larry\ncrying skeleton"),
        Item(imageName: "image7", title: "like\nking approving you"),
        Item(imageName: "image8", title: "princess\nshes strong, trust me"),
        Item(imageName: "image9", title: "sucks\ngoblin didnt liked that"),
        Item(imageName: "image10", title: "toxic\nmimimimi"),
    ]
    private let itemImageView = UIImageView()
    private let titleLabel = UILabel()
    private let itemTitleLabel = UILabel()
     let randomizeButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
        setupAppearance()
    }
    
    private func setupUI() {
        titleLabel.text = "Random Image Generator"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        
        itemTitleLabel.textColor = .white
        itemTitleLabel.textAlignment = .center
        itemTitleLabel.text = "Click the button to see a random image!"
        itemTitleLabel.font = UIFont.systemFont(ofSize: 15)
        itemTitleLabel.numberOfLines = 0
        
        itemImageView.contentMode = .scaleAspectFit
        itemImageView.layer.cornerRadius = 20
        itemImageView.backgroundColor = .white.withAlphaComponent(0.0)
        
        randomizeButton.setTitle("RANDOMIZE", for: .normal)
        randomizeButton.setTitleColor(.systemPurple, for: .normal)
        randomizeButton.layer.cornerRadius = 25
        randomizeButton.backgroundColor = .white
        randomizeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        randomizeButton.addTarget(self, action: #selector(randomizedButtonTapped), for: .touchUpInside)
        view.addSubview(titleLabel)
        view.addSubview(itemTitleLabel)
        view.addSubview(itemImageView)
        view.addSubview(randomizeButton)
        
        [titleLabel, itemTitleLabel, itemImageView, randomizeButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            itemImageView.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 40),
            itemImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            itemImageView.widthAnchor.constraint(equalToConstant: 200),
            itemImageView.widthAnchor.constraint(equalToConstant: 200),
            
            itemTitleLabel.topAnchor.constraint(equalTo: itemImageView.bottomAnchor, constant: 20),
            itemTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            itemTitleLabel.widthAnchor.constraint(equalToConstant: 250),
            
            
            randomizeButton.topAnchor.constraint(equalTo: itemTitleLabel.bottomAnchor, constant: 90),
            randomizeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            randomizeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            randomizeButton.widthAnchor.constraint(equalToConstant: 150),
            randomizeButton.heightAnchor.constraint(equalToConstant: 40),
            
            
        ])
    }
    
    private func setupAppearance() {
        view.backgroundColor = .systemBlue
        
        
        
    }
    @objc  func randomizedButtonTapped() {
        let randomIndex = Int.random(in: 0..<items.count)
        let randomItem = items[randomIndex]
        
        itemImageView.image = UIImage(named: randomItem.imageName)
        itemTitleLabel.text = randomItem.title.uppercased()
        
        UIView.animate(withDuration: 0.3, animations:  {
            self.randomizeButton.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }){ _ in
            UIView.animate(withDuration: 0.3) {
                self.randomizeButton.transform = .identity
            }
            
            
        }
        
        
        
        
        
    }
}
import SwiftUI

#Preview {
    ViewController()
}
