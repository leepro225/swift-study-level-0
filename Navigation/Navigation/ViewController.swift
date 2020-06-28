//
//  ViewController.swift
//  Navigation
//
//  Created by hrobotics on 2020/05/18.
//  Copyright © 2020 eunGyeolLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EditDelegate {

    @IBOutlet var txMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editBtton" {
            editViewController.textWayValue = "segue : use button"
        } else if segue.identifier == "editBarButton" {
            editViewController.textWayValue = "segue : use Bar button"
        }
        editViewController.delegate = self
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }

}

