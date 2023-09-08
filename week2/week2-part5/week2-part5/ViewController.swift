//
//  ViewController.swift
//  week2-part5
//
//  Created by laijiaaa1 on 2023/9/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var middleTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    let text = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
    "Contrary to popular belief, Lorem Ipsum is not simply random text.",
    "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
    "looked up one of the more obscure Latin words, consectetur",
    "from a Lorem Ipsum passage, and going through the cities of the word",
    "This book is a treatise on the theory of ethics, very popular during the.",
    "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    var color = [
        UIColor.red,
        UIColor.orange,
        UIColor.black,
        UIColor.green,
        UIColor.blue,
        UIColor.purple,
        UIColor.brown
    ]
    var backgroundColor = 0
    
    func update(){
        middleTextField.text = text.randomElement()
        
        view.backgroundColor = color[backgroundColor]
        backgroundColor = (backgroundColor + 1) % color.count
    }
    
    @IBAction func buttomButton(_ sender: UIButton) {
        update()
    }
}

