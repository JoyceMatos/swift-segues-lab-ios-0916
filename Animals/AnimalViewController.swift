//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animalIcon: UILabel!
    @IBOutlet weak var animalName: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        if let animal = animal {
            animalName?.text = animal
            
            let animalEmoji = emojiToAnimal(animal)
            animalIcon?.text = animalEmoji
            navigationItem.title = animalEmoji
        }
    }
    
    fileprivate func emojiToAnimal(_ animal: String) -> String {
        switch animal {
        case "Dog":
            return "🐶"
        case "Cat":
            return "🐱"
        case "Mouse":
            return "🐭"
        case "Hamster":
            return "🐹"
        case "Bunny":
            return "🐰"
        case "Panda":
            return "🐼"
        case "Lion":
            return "🦁"
        case "Pig":
            return "🐷"
        case "Frog":
            return "🐸"
        case "Octopus":
            return "🐙"
        default:
            return ""
        }
    }
    
}
