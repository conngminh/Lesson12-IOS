//
//  ViewController.swift
//  Lesson12
//
//  Created by Lê Công Minh on 09/02/2022.
//

import UIKit
import Toast_Swift
import SDWebImage

class ViewController: UIViewController {
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPass: UITextField!
    @IBOutlet weak var imgLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageLogo()
    }
    
    // Code sử dụng SDwebimage
    func setupImageLogo() {
//        imgLogo.backgroundColor = .gray
//        if let url = URL(string: "https://www.pesmaster.com/pes-2021-mobile/graphics/players/149953879_l.png") {
//            let data = try! Data(contentsOf: url)
//            imgLogo.image = UIImage(data: data)
//        }
        
        if let url = URL(string: "https://www.pesmaster.com/pes-2021-mobile/graphics/players/149953879_l.png") {
            self.imgLogo.sd_setImage(with: url, placeholderImage: UIImage(named: "vn"))

        }
    }
    
    //
    
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

