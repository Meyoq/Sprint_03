//
//  ViewController.swift
//  Counter
//
//  Created by Олег Дерябин on 20.06.2024.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var hustoryTextView: UITextView!
    var score: Int = 0
    
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    

    @IBAction func plusDidTap(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyy.MM.d HH:mm:ss"
        let stringDate = dateFormatter.string(from: Date())
        score += 1
        scoreLabel.text = "Значение счётчика: \(score)"
        hustoryTextView.text.append(contentsOf: "\n\(stringDate): значение изменено на +1\n")
    }
    
    @IBAction func minusDidTap(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy.MM.d HH:mm:ss"
        let stringDate = dateFormatter.string(from: Date())
        if score <= 0 {
            score = 0
            hustoryTextView.text.append(contentsOf: "\n\(stringDate): попытка уменьшить значение счётчика ниже 0\n")
        } else {
            score -= 1
            scoreLabel.text = "Значение счётчика: \(score)"
            hustoryTextView.text.append(contentsOf: "\n\(stringDate): значение изменено на -1\n")}
        
    }
    
    @IBAction func resetDidTap(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyy.MM.d HH:mm:ss"
        let stringDate = dateFormatter.string(from: Date())
        score = 0
        scoreLabel.text = "Значение счётчика: \(score)"
        hustoryTextView.text.append(contentsOf: "\n\(stringDate): значение сброшено\n")
    }
}

