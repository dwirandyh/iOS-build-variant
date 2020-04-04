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
    @IBOutlet weak var squadNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // key used is a key in Custom Target iOS Properties
        guard let baseUrl = infoForKey("Base Url") else { return }
        baseUrlLabel.text = baseUrl
        
        // key used is a key in Custom Target iOS Properties
        guard let squadName = infoForKey("Squad Name") else { return }
        squadNameLabel.text = squadName
    }
    
    
    func infoForKey(_ key: String) -> String? {
        return (Bundle.main.infoDictionary?[key] as? String)?
            // replacing for url
            .replacingOccurrences(of: "\\", with: "")
    }
    
}

