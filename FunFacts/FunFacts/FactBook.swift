//
//  FactBook.swift
//  FunFacts
//
//  Created by Dosty Everts on 2/3/15.
//  Copyright (c) 2015 Must Win. All rights reserved.
//

import Foundation

struct FactBook {
    
    let factsArray: [String] = [
        "Ants stretch when they wake up in the morning.",
        "Ostritches can run faster than horses.",
        "Olympic gold medals are actually mostly made of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach the Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "Some penguins can leap 2-3 meters out of the water.",
        "The state of Florida is bigger than England.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the Earth when the Great Pyramid was being built."
    ]
    var index = 0
    
    func nextFact(fact: String) -> String {
        var index = find(factsArray, fact)
        index = (index == nil || index >= (factsArray.count - 1) ? -1 : index)
        
        return factsArray[index! + 1]
    }
    
    func randomFact() -> String {
        var randomNumber = Int(arc4random_uniform(UInt32(factsArray.count)))
        return factsArray[randomNumber]
    }
    
}