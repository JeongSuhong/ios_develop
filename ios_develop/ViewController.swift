//
//  ViewController.swift
//  ios_develop
//
//  Created by Suhong Jeong on 2021/05/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var resizeButton: UIButton!
    
    var isZoom = false
    var onImage : UIImage?
    var offImage : UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        onImage = UIImage(named: "paw_on.png")
        offImage = UIImage(named: "paw_off.png")
        
        imageView.image = onImage
    }

    @IBAction func resizeImage(_ sender: UIButton) {
        let scale: CGFloat = 2.0
        var newWidth: CGFloat, newHeight: CGFloat
        
        if isZoom {
            newWidth = imageView.frame.width / scale
            newHeight = imageView.frame.height / scale
            resizeButton.setTitle("확대", for: .normal)
            
        } else {
            newWidth = imageView.frame.width * scale
            newHeight = imageView.frame.height * scale
            resizeButton.setTitle("축소", for: .normal)
        }
        
        imageView.frame.size = CGSize(width: newWidth, height: newHeight)
        
        isZoom = !isZoom
    }
    
    @IBAction func switchImage(_ sender: UISwitch) {
        if sender.isOn {
            imageView.image = onImage
        } else {
            imageView.image = offImage
        }
    }
}

