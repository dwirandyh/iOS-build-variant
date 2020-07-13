//
//  ViewController.swift
//  iOS Build Variant
//
//  Created by Dwi Randy Herdinanto on 13/07/20.
//  Copyright © 2020 dwirandyh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        guard let baseUrl: String = Bundle.main.infoDictionary?["BASE_URL"] as? String else { return }
        print(baseUrl)
    }


}

