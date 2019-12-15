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
    var num : Int = 0
    //image file의 이름을 저장할 변수 선언
    var imageArr : [String] = ["01.png","02.png","03.png","04.png","05.png","06.png"]
    var tmpImage : UIImage? //view상에 보여줄 image
    
    
    //action function 선언
    //previous button 선택
    @IBAction func preButtonAction(_ sender: UIButton) {
        if(num == 0){
            num = imageArr.count - 1 //array의 크기
        } else {
            num -= 1
        }
        tmpImage = UIImage(named: imageArr[num])
        imgView.image = tmpImage
    }
    //next button 선택
    @IBAction func nextButtonAction(_ sender: UIButton) {
        if(num == imageArr.count - 1){
            num = 0
        } else {
            num += 1
        }
        tmpImage = UIImage(named: imageArr[num])
        imgView.image = tmpImage
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tmpImage = UIImage(named: imageArr[num]) //tmpImage에 첫번째 사진을 입력
        imgView.image = tmpImage // imageView에 입력
    }


}

