//
//  ConversationViewController.swift
//  1124 FHM月曆美女
//
//  Created by 泳逸 李 on 2017/11/26.
//  Copyright © 2017年 yungyili. All rights reserved.
//

import UIKit

class ConversationViewController: UIViewController {
    @IBOutlet weak var myWebView: UIWebView!
    
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    var infoAddressFromView2:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let okInfoAddress = infoAddressFromView2{
            if let okURL = URL(string: okInfoAddress){
                let request = URLRequest(url: okURL)
                myWebView.loadRequest(request)
            }
        }
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        myActivityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        myActivityIndicator.stopAnimating()
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
