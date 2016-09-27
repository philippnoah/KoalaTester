//
//  WaitingViewController.swift
//  KoalaTest
//
//  Created by Philipp Eibl on 9/25/16.
//  Copyright © 2016 Philipp Eibl. All rights reserved.
//

import Foundation
import UIKit

class WaitingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        performSegue(withIdentifier: "waitingToMap", sender: self)

    }
    
    func setUpUI() {
        let indicator = UIActivityIndicatorView(frame: CGRect(x: Double(self.view.center.x), y: Double(self.view.center.y), width: 1, height: 1))
        indicator.activityIndicatorViewStyle = .whiteLarge
        //indicator.color = UIColor.blue
        indicator.hidesWhenStopped = true
        indicator.startAnimating()
        self.view.addSubview(indicator)
        indicator.stopAnimating()
    }
    
}
