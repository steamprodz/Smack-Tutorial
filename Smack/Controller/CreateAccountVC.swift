//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Andrii Diachenko on 3/6/19.
//  Copyright © 2019 Andrii Diachenko. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: UNWIND_SEGUE, sender: sender)
    }
}
