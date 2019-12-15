//
//  ViewController.swift
//  mission_imgViewer
//
//  Created by Yony on 2019/11/25.
//  Copyright © 2019 Yony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlet 선언
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var preButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    //variable 선언
    var imgArray;[6]:UIImage
    
    
    //action function 선언
    @IBAction func preButtonAction(_ sender: UIButton) {
    }
    @IBAction func nextButtonAction(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstImg = UIImage(named: "01.png")
    }


}

