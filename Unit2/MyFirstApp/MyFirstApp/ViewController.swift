//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Alex Paul on 10/28/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // implicit unwrapping of an optional
  // weak is a memory optimizing feature we will talk more about further in the unit, basically the view controller will have a weak reference to the label outlet
  @IBOutlet weak var displayLabel: UILabel!
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func colorChangeButtonPressed(_ sender: UIButton) {
    let newColor: (color: UIColor?, name: String)
    switch sender.tag { // Int
    case 0:
      newColor = (.red, "Red")
    case 1:
      newColor = (.green, "Green")
    case 2:
      newColor = (.blue, "Blue")
    default:
      newColor = (.white, "White")
    }
    view.backgroundColor = newColor.color
    displayLabel.text = "The background color is \(newColor.name)"
  }
  

}

