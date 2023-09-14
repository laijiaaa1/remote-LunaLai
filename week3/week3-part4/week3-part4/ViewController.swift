//
//  ViewController.swift
//  week3-part4
//
//  Created by laijiaaa1 on 2023/9/13.
//

import UIKit

class ViewController: UIViewController {

    enum Status: Int{
        case logIn, signUp
    }
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var segmentcontrol: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIForSegment(segmentcontrol.selectedSegmentIndex)
    }
        
    @IBAction func logInSignUp(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        updateUIForSegment(selectedIndex)
    }
    //MARK: - Send Button -
    @IBAction func sendButton(_ sender: UIButton) {
        let account = accountTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let check = checkTextField.text ?? ""
        
        if segmentcontrol.selectedSegmentIndex == Status.logIn.rawValue{
            if account == "appworks_school" && password == "1234" {
                showAlert(title: "Success", message: "Log In Success")
            } else if account.isEmpty {
                showError(message: "Account should not be empty.")
            } else if password.isEmpty {
                showError(message: "Password should not be empty.")
            } else {
                showError(message: "Login fail")
            }
        }else {
            if password == check {
                showAlert(title: "Success", message: "Sign up Success")
            }else if check.isEmpty{
                showError(message: "Check Password should not be empty.")
            }else{
                showError(message: "Signup fail")
            }
        }
    }
    //MARK: - Segment Control -
    func updateUIForSegment(_ selectedIndex: Int) {
            if selectedIndex == 0 {
                checkLabel.textColor = UIColor.gray
                checkTextField.isEnabled = false
                checkTextField.backgroundColor = UIColor.gray
              
                    //一般背景颜色為白，選中的segment為黑色
                segmentcontrol.backgroundColor = UIColor.white
                segmentcontrol.selectedSegmentTintColor = UIColor.black
                    //邊框設置
                segmentcontrol.layer.borderColor = UIColor.black.cgColor
                segmentcontrol.layer.borderWidth = 1
                    //一般文字為黑色
                let segmentNormalText = [NSAttributedString.Key.foregroundColor: UIColor.black]
                segmentcontrol.setTitleTextAttributes(segmentNormalText, for:.normal)
                    //選中的文字為白色
                let segmentSelectText = [NSAttributedString.Key.foregroundColor: UIColor.white]
                segmentcontrol.setTitleTextAttributes(segmentSelectText, for:.selected)
                    //NSAttributedString.Key.foregroundColor：告訴 NSAttributedString 文字屬性將被設置
            } else {
                checkLabel.textColor = UIColor.black
                checkTextField.isEnabled = true
                checkTextField.backgroundColor = UIColor.white
            }
    }
    //MARK: - Alert -
    func showAlert(title: String, message: String) {
            //UIAlertAction，表示使用者可以執行的動作。並添加一個"OK"在控制器上，用戶以點擊的動作來確認或關閉警告框。
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        
            //present 是一個 UIViewController 的方法，此處用於將 alertController 呈現在當前檢視上，他將顯示一個彈出視窗。
        present(alertController, animated: true, completion: nil)
    }
    
    func showError(message: String) {
        showAlert(title: "Error", message: message)
    }
}

