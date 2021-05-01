//
//  MissionViewController.swift
//  ios_develop
//
//  Created by Suhong Jeong on 2021/05/01.
//

import Foundation
import UIKit

class MissionViewController : UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var currentViewImageIndex = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "cat-\(currentViewImageIndex).jpeg")
    }
    
    
    @IBAction func prevImage(_ sender: UIButton) {
        if currentViewImageIndex == 1 {
            currentViewImageIndex = 3
        } else {
            currentViewImageIndex = currentViewImageIndex - 1
        }
        
        imageView.image = UIImage(named: "cat-\(currentViewImageIndex).jpeg")
    }
    
    @IBAction func nextImage(_ sender: UIButton) {
        if currentViewImageIndex == 3 {
            currentViewImageIndex = 1
        } else {
            currentViewImageIndex = currentViewImageIndex + 1
        }
        
        imageView.image = UIImage(named: "cat-\(currentViewImageIndex).jpeg")
    }
}
