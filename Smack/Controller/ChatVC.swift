//
//  ChatVC.swift
//  Smack
//
//  Created by Andrii Diachenko on 3/5/19.
//  Copyright © 2019 Andrii Diachenko. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var menuButton: UIButton!
    
    // MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupRevealController()
    }
    
    func setupRevealController() {
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

}
