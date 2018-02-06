//
//  WebViewController.swift
//  BeerChipFrameWork
//
//  Created by Vmoksha on 06/02/18.
//  Copyright © 2018 Srinivas. All rights reserved.
//

import UIKit
import WebKit

public class WebViewController: UIViewController ,WKNavigationDelegate {

    var webView = WKWebView()
    
    var activityIndiCator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView( frame: self.view.frame)
        webView.navigationDelegate = self
        let url = NSURL(string: "https://vmokshagroup.com/")! as URL
        webView.load(URLRequest(url: url))
        self.view.addSubview(webView)
        
        activityIndiCator.frame = CGRect(x:0.0, y:0.0, width:40.0, height:40.0);
        self.activityIndiCator.transform = CGAffineTransform(scaleX:2.0, y:2.0)
        activityIndiCator.center = self.view.center
        activityIndiCator.hidesWhenStopped = true
        activityIndiCator.activityIndicatorViewStyle =
            UIActivityIndicatorViewStyle.white
        activityIndiCator.color = .black
        self.view.addSubview(activityIndiCator)
        activityIndiCator.startAnimating()

        // Do any additional setup after loading the view.
    }

    public func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        
        print(error.localizedDescription)
    }
    public func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Strat to load")
        activityIndiCator.startAnimating()
    }
    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finish to load")
        activityIndiCator.stopAnimating()
        
    }


}
