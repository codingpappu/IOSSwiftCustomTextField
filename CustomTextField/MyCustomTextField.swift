//
//  MyCustomTextField.swift
//  CustomTextField
//
//  Created by Hardeep Singh on 14/12/18.
//  Copyright © 2018 Business Pointers. All rights reserved.
//

import UIKit

//0: Creating custom class by inherit UITexfield Class
class MyCustomTextField: UITextField {

  //1: Declaring padding to define the textarea in a textfield
  let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10);
  
  //2: custom field which we can use to uniquely identify this textfield
  var id = ""
  
  //3: override default variable and change the background color for disabled or enabled textfield
  override var isEnabled: Bool
    {
    //3.1: whenever isEnabled field's value will set we will change the background color accordingly
    willSet {
      backgroundColor = newValue ? UIColor(red: 0.4, green: 0.8, blue: 1.0, alpha: 1)
        : UIColor.lightGray
    }
    
  }
  
  //4: default init method overridden
  //This method runs when we create object of this class in code rather than through storyboard by using outlet
  override init(frame: CGRect) {
    super.init(frame: frame )
    setup()
  }
  
  
  //5: required init method
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    // fatalError("init(coder:) has not been implemented")
  }
  
  //6: This method calls if we create a outlet with the help of storyboard
  override func awakeFromNib() {
    super.awakeFromNib()
    setup()
  }
  
  //7: our custom method to change the look and feel
  func setup()
  {
    //changing the background color
    backgroundColor = UIColor(red: 0.4, green: 0.8, blue: 1.0, alpha: 1) // color value is between 0 and 1 and 1 = 255 hexadecimal/rgb value
    //changing the color of text
    textColor = UIColor.white
    
  }

  //8: this method calls automatically whenever app changes its layout
  override func layoutSubviews() {
    super.layoutSubviews()
    
    //make the all corners to round
    layer.cornerRadius = frame.height / 2 // always use half of the textfield's height to look the corner radius perfect shape
  }
 
  //9: override method to set the textarea as we need some padding from all corners because of radius
  override func textRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.inset(by: padding) // we do this because of corner radius
    
  }
  
  //10: override method to set the textarea as we need some padding from all corners because of radius
  override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.inset(by: padding) // we do this because of corner radius
  }
  
  //11: override method to set the textarea as we need some padding from all corners because of radius
  override func editingRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.inset(by: padding) // we do this because of corner radius
  }
  

}
