//
//  ViewController.swift
//  comingSpringEdrees
//
//  Created by Mohammad Edrees on 10/23/20.
//

import UIKit


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
        // call the func
        caller(name: "Jawid", hide: false)
        insertionSort()
        selectionSort()
        
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
    
    // call func in func
    
    func caller(name: String, hide:Bool) -> String {
        if hide {
            return diffCaller(Na: name, callerName: false)
        } else {
            return diffCaller(Na: name, callerName: true)
        }
        
    }
    func diffCaller(Na:String, callerName:Bool) -> String {
        
        if callerName {
            return Na + " Number is hide "
        } else {
            return Na + " Number is not hide "
        }
    }
    
}
// extension of the class viewController and sort of the number insertion
extension ViewController {
    
    func insertionSort() {
        var arr = [5,3,4,2,1,6]
        var j = 0
        var key = 0
        
        for i in 1..<arr.count {
            
            j = i
            key = arr[i]
            for j in stride(from: j, to: 0, by: -1) {
                if arr[j-1] > key {
                    var temp = 0
                    temp = 0
                    temp = arr[j]
                    arr[j] = arr[j-1]
                    arr[j-1] = temp
                }
            }
            print(arr)
        }
    }
}

// extension of the viewControler and sort of the number by selection
extension ViewController {
    
    func selectionSort() {
        
        var arr = [3,2,1,4,5,7,6]
        var min = 0
        var j = 0
        for i in 0..<arr.count {
            min = i
            j = i + 1
            for j in stride(from: j, to: arr.count, by: 1) {
            
                if (arr[min]) > arr[j] {
                    min = j
                }
            }
            let temp = arr[i]
            arr[i] = arr[min]
            arr[min] = temp
        }
        print(arr)
    }
}

