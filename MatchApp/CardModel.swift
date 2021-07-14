//
//  CardModel.swift
//  MatchApp
//
//  Created by Сергей Масленников on 14.07.2021.
//

import Foundation


class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an empty array
        var generatedCards = [Card]()
        
        // Declare an empty array for used numbers
        var usedNumbers = [Int]()
        
        var counter = 0
        
        // Randomly generate 8 pairs of cards
        while counter < 8 {
                
            // Generate a random number
            let randomNumber = Int.random(in: 1...13)
                
            // Check the number
            if usedNumbers.contains(randomNumber) {
                continue
            }
            
            // Add number to "used"
            usedNumbers.append(randomNumber)
            
            // Increasing the counter
            counter += 1
            
            // Create two new card objects
            let cardOne = Card()
            let cardTwo = Card()
            
            // Set their image names
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            // Add them to the array
            generatedCards += [cardOne, cardTwo]
            
            print(randomNumber)
            
        }
        
        // Randomize the cards within the array
        generatedCards.shuffle()
        
        // Return the array
        return generatedCards
        
    }
    
}
