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

      public func openBeerChipFrameWork(viewController: UIViewController){
        
        beerchipFrameWorkVC = viewController
        
        let mainView = UIView(frame:CGRect(x:0 , y:250, width: UIScreen.main.bounds.width , height: 70))
        mainView.backgroundColor = .lightGray
        self.view.addSubview(mainView)

        let webViewButton = UIButton(frame: CGRect(x: 20 ,y: 15, width: 150, height: 40))
        webViewButton.setTitle("Open WebView", for: .normal)
        webViewButton.backgroundColor = UIColor(red: 0.0 ,green: 94.0/255.0, blue: 163.0/255.0, alpha:1.0 )
        webViewButton.setTitleColor(.white, for: .normal)
        webViewButton.addTarget(self, action: #selector(gotoWebView), for: .touchUpInside)
        mainView.addSubview(webViewButton)
        
        let alertButton = UIButton(frame: CGRect(x: 200 ,y: 15, width: 150, height: 40))
        alertButton.setTitle("Click Here", for: .normal)
        alertButton.backgroundColor = UIColor(red: 0.0 ,green: 94.0/255.0, blue: 163.0/255.0, alpha:1.0 )
        alertButton.setTitleColor(.white, for: .normal)
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







