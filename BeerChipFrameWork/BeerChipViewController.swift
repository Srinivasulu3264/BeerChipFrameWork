//
//  BeerChipViewController.swift
//  BeerChipFrameWork
//
//  Created by Vmoksha on 06/02/18.
//  Copyright © 2018 Srinivas. All rights reserved.
//

import UIKit

public class BeerChipViewController: UIViewController {
    
     var beerchipFrameWorkVC = UIViewController()
    

    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

     public func openBeerChipFrameWork(viewController: UIViewController , withLocation:CGRect){
        
        beerchipFrameWorkVC = viewController
        
        let  location:CGRect = withLocation
        
        let mainView = UIView(frame:CGRect(x: location.origin.x , y: location.origin.y, width: UIScreen.main.bounds.width-20 , height: location.size.height))
        mainView.backgroundColor = UIColor(red: 0.0 ,green: 94.0/255.0, blue: 163.0/255.0, alpha:1.0 )
        viewController.view.addSubview(mainView)
        
        //   let webViewButton = UIButton(frame: CGRect(x: 15 ,y: 7, width: 150, height: 26))
        let webViewButton = UIButton()
        let buttonHeight = location.size.height * 0.75
        webViewButton.frame = CGRect(x:15 ,y: ((mainView.center.y-location.origin.y)-(buttonHeight/2)), width: 150, height: buttonHeight )
        webViewButton.setTitle("Open WebView", for: .normal)
        webViewButton.backgroundColor = .white
        webViewButton.setTitleColor(UIColor(red: 0.0 ,green: 94.0/255.0, blue: 163.0/255.0, alpha:1.0 ), for: .normal)
        webViewButton.layer.cornerRadius = 8.0
        webViewButton.addTarget(self, action: #selector(gotoWebView), for: .touchUpInside)
        mainView.addSubview(webViewButton)
        
        //      let alertButton = UIButton(frame: CGRect(x: 185 ,y: 7, width: 150, height: 26))
        let alertButton = UIButton( )
        alertButton.frame = CGRect(x:185 ,y: ((mainView.center.y-location.origin.y)-(buttonHeight/2)), width: 150, height: buttonHeight )
        alertButton.setTitle("Click Here", for: .normal)
        alertButton.backgroundColor = .white
        alertButton.setTitleColor(UIColor(red: 0.0 ,green: 94.0/255.0, blue: 163.0/255.0, alpha:1.0 ), for: .normal)
        alertButton.layer.cornerRadius = 8.0
        alertButton.addTarget(self, action: #selector(showTheAlertMessage), for: .touchUpInside)
        mainView.addSubview(alertButton)

    }

    @objc func gotoWebView ()  {
        
        let  webVC = WebViewController()
        beerchipFrameWorkVC.navigationController?.pushViewController(webVC , animated: true)
    }
    
    @objc func showTheAlertMessage() {
        
        let alertController = UIAlertController(title: "Welcome..!" , message: "BeerChip has Claimed" , preferredStyle:UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title:"OK" , style:.default , handler:{ (action) in
            alertController.dismiss(animated: true, completion: nil)
        })
        
        let cancelAction = UIAlertAction(title:"Cancel" , style:.destructive , handler:{(action) in
            alertController.dismiss(animated: true, completion: nil)
        })
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        beerchipFrameWorkVC.present(alertController, animated: true, completion: nil)
    }
}







