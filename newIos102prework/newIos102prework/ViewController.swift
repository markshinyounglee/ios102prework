//
//  ViewController.swift
//  newIos102prework
//
//  Created by Shinyoung Lee on 2/4/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UILabel!
    @IBOutlet weak var lastNameTextField: UILabel!
    @IBOutlet weak var schoolNameTextField: UILabel!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var viewSegmentedControl: UISegmentedControl!
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceButtonDidTap(_ sender: Any) {
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = viewSegmentedControl.titleForSegment(at: viewSegmentedControl.selectedSegmentIndex)

        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."

        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

