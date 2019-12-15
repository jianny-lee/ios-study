//
//  ViewController.swift
//  practice_PickerView
//
//  Created by Yony on 2019/12/15.
//  Copyright © 2019 Jianny. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    //variable
    var maxArrNum : Int = 0
    let pickViewCol = 2
    let pickerHeight = 80
    var imageName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]
    var imgArr = [UIImage?]()
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var selectImageName: UILabel!
    @IBOutlet var selectImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        maxArrNum = imageName.count
        for i  in 0 ..< maxArrNum {
            let img = UIImage(named: imageName[i])
            imgArr.append(img) //배열에 img를 추가
        }
        
        selectImageName.text = imageName[0]
        selectImageView.image = imgArr[0]
    }
    
    //Deletage Methods
    //return the number of 'columns' to display
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickViewCol
    }
    //return height of row for each component
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return CGFloat(pickerHeight)
    }
    //return the # of rows in each component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageName.count
    }
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageName[row]
//    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imgView = UIImageView(image: imgArr[row])
        imgView.frame = CGRect(x:0, y:0, width:100, height:150)
        
        return imgView
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(component == 0){
            selectImageName.text = imageName[row]
        } else {
            selectImageView.image = imgArr[row]
        }
    }

}

