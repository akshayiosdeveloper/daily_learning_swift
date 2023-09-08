//
//  Properties.swift
//  Swift_Practise
//
//  Created by Akshay Kumar on 05/09/23.
//

import Foundation

// exmaple of computed propreties
class Properties {
    var name: String = "akshay"
    var lastName = " kumar"
   var getFullName: String {
        get { getFullName }
        set {
            lastName = newValue
        }
        
    }
    
}
// Example of property observer
// willSet and didSet

struct Person {
    var name: String
    var age : Int
}
