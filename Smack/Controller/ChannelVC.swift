//
//  ChannelVC.swift
//  Smack
//
//  Created by Andrii Diachenko on 3/5/19.
//  Copyright © 2019 Andrii Diachenko. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupRevealController()
    }

    func setupRevealController() {
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    // Actions
    @IBAction func loginButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: LOGIN_SEGUE, sender: sender)
    }
    
}
