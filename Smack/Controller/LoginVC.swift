//
//  LoginVC.swift
//  Smack
//
//  Created by Andrii Diachenko on 3/6/19.
//  Copyright © 2019 Andrii Diachenko. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    //Actions
    @IBAction func closedButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func createAccountPressed(_ sender: Any) {
        self.performSegue(withIdentifier: CREATE_ACCOUNT_SEGUE, sender: sender)
    }
}
