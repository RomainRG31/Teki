//
//  ViewController.swift
//  Teki
//
//  Created by Romain GELDER ROGER on 20/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    var celebrities = ["Le Steve Jobs", "La Madonna", "Le Karl Lagarfeld", "La Scarlett Johansson"]
    var activites = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues lourdes", "de la raclette party"]
    
    @IBOutlet weak var quoteLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func changeQuote(_ sender: Any) {
        let randomIndex1 = Int.random(in: 0..<celebrities.count)
        let randomIndex2 = Int.random(in: 0..<activites.count)
        let randomCelebrities = celebrities[randomIndex1]
        let randomactivites = activites[randomIndex2]

       let quote = "Tu es" + " " + randomCelebrities + " " + randomactivites
        quoteLabel.text = quote
    }
}
