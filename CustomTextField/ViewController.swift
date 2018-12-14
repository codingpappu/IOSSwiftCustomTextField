//
//  ViewController.swift
//  CustomTextField
//
//  Created by Hardeep Singh on 14/12/18.
//  Copyright © 2018 Business Pointers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let myTextField = MyCustomTextField( frame: CGRect(x: 20, y: 50, width: 250, height: 30 ))
    myTextField.text = "Hello, World!"
    
    view.addSubview(myTextField)
    
    
  }


}

