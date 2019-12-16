//
//  ViewController.swift
//  webApp
//
//  Created by Yony on 2019/12/16.
//  Copyright © 2019 Jianny. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    @IBOutlet var indicatorView: UIActivityIndicatorView!
    
////    func firstWebPage(){
////        let htmlString = "<h1> Github </h1><p> Check a website whether see like app or not </p><p><a href=\"https://github.com\">Github</a></p>"
////    }
//    func loadWebPage(_ url:String){
//        let myURL = URL(string: url)
//        let myRequest = URLRequest(url: myURL!)
//        webView.load(myRequest)
//        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new, context: nil)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let htmlString = "<h1> Github </h1><p> Check a website whether see like app or not </p><p><a href=\"https://github.com\">Github</a></p>"
        webView.loadHTMLString(htmlString, baseURL: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "loading"{
            if webView.isLoading{
                indicatorView.startAnimating()
                indicatorView.isHidden = false
            } else{
                indicatorView.stopAnimating()
                indicatorView.isHidden = true
            }
        }
    }
   

}

