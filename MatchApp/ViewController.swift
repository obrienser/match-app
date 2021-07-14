//
//  ViewController.swift
//  MatchApp
//
//  Created by Сергей Масленников on 12.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let model = CardModel()
    var cardsArray = [Card]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cardsArray = model.getCards()
        
    }


}

