//
//  ViewController.swift
//  comingSpringEdrees
//
//  Created by Mohammad Edrees on 10/23/20.
//

import UIKit
// tessssst

class ViewController: UIViewController {
    
    // Display the label default content
    @IBOutlet weak var displayTextCollor: UILabel! {
        didSet {
            
            displayTextCollor.text = "Java"
            displayTextCollor.font = .boldSystemFont(ofSize: 15)
            displayTextCollor.backgroundColor = .red
            displayTextCollor.textAlignment = .left
            
        }
    }
    // Display the label defualt content
    @IBOutlet weak var displayWordToWord: UILabel! {
        didSet {
            displayWordToWord.text = "Salaam"
            displayWordToWord.font = .boldSystemFont(ofSize: 15)
            displayWordToWord.backgroundColor = .green
            displayWordToWord.textColor = .red
            
        }
    }
    // Display the label default content
    @IBOutlet weak var displayStateToState: UILabel! {
        didSet {
            
            displayStateToState.text = "Virginia"
            displayStateToState.font = .boldSystemFont(ofSize: 15)
            displayStateToState.backgroundColor = .red
            displayStateToState.shadowColor = .black
        }
    }
    
    // first Button
    @IBOutlet weak var firstbutton: UIButton! {
        didSet {
            firstbutton.title(for: .normal)
        }
    }
    // Second Button
    @IBOutlet weak var secondButton: UIButton! {
        didSet {
            secondButton.title(for: .normal)
        }
    }
    // Third Button
    @IBOutlet weak var ThirdButton: UIButton! {
        didSet {
            ThirdButton.title(for: .normal)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func FirstButtonTapped(_ sender: Any) {
        // call the fist func
        textCollor()
    }
    // Display the second Label content with pressing second button
    @IBAction func displayWordToWord(_ sender: Any) {
        // call the second func
        dispWordToWord()
    }
    // Display the third label content with pressing third button
    @IBAction func displayStateToState(_ sender: Any) {
        // call the third func
        StatToState()
    }
    
    func textCollor() {
        
        displayTextCollor.text = "Python"
        displayTextCollor.font = .boldSystemFont(ofSize: 30)
        displayTextCollor.backgroundColor = .orange
        displayTextCollor.textAlignment = .center
        
    }
    
    func dispWordToWord() {
        displayWordToWord.text = "Hi"
        displayWordToWord.font = .boldSystemFont(ofSize: 40)
        displayWordToWord.backgroundColor = .green
        displayWordToWord.textColor = .red
    }
    
    func StatToState() {
        
        displayStateToState.text = "Maryland"
        displayStateToState.font = .boldSystemFont(ofSize: 20)
        displayStateToState.backgroundColor = .orange
        displayStateToState.shadowColor = .brown
    }
    
}


