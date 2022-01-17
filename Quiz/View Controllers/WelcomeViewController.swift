//
//  WelcomeViewController.swift
//  Quiz
//
//  Created by Евгений Пашко on 17.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        print(#line, #function)
    }
}

