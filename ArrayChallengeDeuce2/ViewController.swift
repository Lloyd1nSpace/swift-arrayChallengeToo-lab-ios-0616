//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    // This is a property! Wasn't so clear to me at first since this is one of the first "official" labs coming from Objective-C

    override func viewDidLoad() {
        super.viewDidLoad()
 
    
    }

    func addNameToDeliLine(name: String) -> String {
        var deliGreeting = ""
        
            if deliLine.count == 0 {
                 deliLine.append(name)
                deliGreeting = "Welcome \(name), you're first in line!"
            } else if name == "Billy Crystal" {
                deliLine.insert(name, atIndex: 0)
                deliGreeting = "Welcome Billy! You can sit wherever you like."
            } else if name == "Meg Ryan" {
                deliLine.insert(name, atIndex: 0)
                deliGreeting = "Welcome Meg! You can sit wherever you like."
            } else {
                deliLine.append(name)
                deliGreeting = "Welcome \(name), you're number \(deliLine.count) in line."
    }
        return deliGreeting
    }
    
    func nowServing() -> String {
        var serving = ""
        
        for name in deliLine {
            if deliLine.count == 0 {
                serving = "There is no one to be served."
            } else {
                serving = "Now serving \(name)!"
            }
        }
        deliLine.removeFirst()
        // Same as deliLine.removeAtIndex(0)
        return serving
    }
    
    func deliLineDescription () -> String {
        
        var description = "The line is:"
    
        if deliLine.count == 0 {
            description = "The line is currently empty."
        }
    
        for (index, name) in deliLine.enumerate() {
            if deliLine.count > 0 {
               description += "\n\(index + 1). \(name)"
                // Could also use description.appendContentsOf()
            }
        }
        return description
    }
}
// No more @end like before

