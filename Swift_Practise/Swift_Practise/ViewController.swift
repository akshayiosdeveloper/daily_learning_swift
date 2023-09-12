//
//  ViewController.swift
//  Swift_Practise
//
//  Created by Akshay Kumar on 05/09/23.
//

import UIKit

class ViewController: UIViewController {
    var person: Person? {
        willSet {
         // print("== called before setting new value ==")
            if let name = newValue?.name {
              //  print("new name is \(name)")
            }
        }
        didSet {
           // print("== called after setting new value ==")
            if let name =  person?.name {
                print("== new name \(name)")
                print("==old name \(oldValue?.name)")
                //print("Person got set to \(person.name)' with age (person.age)")

            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //executePropertyFunction()
       // person = Person(name: "akshay", age: 34)
      //  person?.name = "let"
        
        let boj = Score()
        boj.run = 10
    }
    
    func executePropertyFunction() {
        let obj = Properties()
        //print(obj.getFullName)
        obj.name = "gobin"
        obj.lastName = "hell0"
        obj.getFullName = "akkk"
        //print(obj.getFullName)

    }
    func executePropertyObserver() {
     
    }
    
}

