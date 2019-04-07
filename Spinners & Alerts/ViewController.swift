//
//  ViewController.swift
//  Spinners & Alerts
//
//  Created by 板垣智也 on 2019/04/07.
//  Copyright © 2019 板垣智也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Hey there!", message: "Are you sure?", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            print("OK button pressed")
            
            self.dismiss(animated: true, completion: nil)
        }))
        
        alertController.addAction(UIAlertAction(title: "No", style: .default, handler: { (action) in
            print("No button pressed")
            
            self.dismiss(animated: true, completion: nil)
            }))
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func puaseApp(_ sender: Any) {
        
        // Create Indicator
        let activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        activityIndicator.center = self.view.center
        
        activityIndicator.hidesWhenStopped = true
        
        activityIndicator.style = UIActivityIndicatorView.Style.gray
        
        // Add indicator to view
        view.addSubview(activityIndicator)
        
        activityIndicator.startAnimating()
        
        // User cannot press the button
        UIApplication.shared.beginIgnoringInteractionEvents()
        
//        UIApplication.shared.endIgnoringInteractionEvents()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

