//
//  ViewController.swift
//  multiple-environment
//
//  Created by Dwi Randy Herdinanto on 01/04/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var baseUrlLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let baseUrl = infoForKey("Base Url") else { return }
        baseUrlLabel.text = baseUrl
    }
    
    
    func infoForKey(_ key: String) -> String? {
        return (Bundle.main.infoDictionary?[key] as? String)?
            // replacing for url
            .replacingOccurrences(of: "\\", with: "")
    }
    
}

