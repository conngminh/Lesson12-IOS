//
//  FirstVC.swift
//  Lesson12
//
//  Created by Lê Công Minh on 11/02/2022.
//

import UIKit
import ImageSlideshow

class FirstVC: UIViewController {

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgSlideShow: ImageSlideshow!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageSlideShow()
    }
    
    func setupImageSlideShow() {
        imgSlideShow.setImageInputs([
          ImageSource(image: UIImage(named: "vn")!),
          ImageSource(image: UIImage(named: "tl")!),
          ImageSource(image: UIImage(named: "ca")!)
        ])
        imgSlideShow.contentScaleMode = .scaleToFill
        imgSlideShow.slideshowInterval = 2
        //idea: Màn hình đầu có label 2 màn hình sau không có label
        imgSlideShow.delegate = self
    }
}

extension FirstVC: ImageSlideshowDelegate {
    func imageSlideshow(_ imageSlideshow: ImageSlideshow, didChangeCurrentPageTo page: Int) {
        if page != 0 {
            lbTitle.isHidden = true
        } else {
            lbTitle.isHidden = false
        }
    }
}
