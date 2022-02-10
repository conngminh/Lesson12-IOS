//
//  ViewController.swift
//  Lesson12
//
//  Created by Lê Công Minh on 09/02/2022.
//

import UIKit
import Toast_Swift

class ViewController: UIViewController {
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapOnLogin(_ sender: Any) {
        view.endEditing(true)
        if tfUsername.text == "" {
            showToastNotification(noti: "Please enter username")
            return
        }
        
        if tfPass.text == "" {
            showToastNotification(noti: "Please enter password")
            return
        }
    }
    
    func showToastNotification(noti: String) {
        var style = ToastStyle()
        style.backgroundColor = .blue
        style.messageColor = .white
        self.view.makeToast(noti, duration: 3.0, position: .bottom, style: style)

    }
}

