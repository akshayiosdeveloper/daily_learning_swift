//
//  ViewController.swift
//  Swift_Practise
//
//  Created by Akshay Kumar on 05/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        executePropertyFunction()
    }
    
    func executePropertyFunction() {
        let obj = Properties()
        print(obj.cr)
    }

}
