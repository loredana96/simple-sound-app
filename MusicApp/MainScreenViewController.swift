//
//  MainScreenViewController.swift
//  MusicApp
//
//  Created by Loredana Todoran on 07/08/2019.
//  Copyright © 2019 Loredana Todoran. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {
   
    
    @IBOutlet weak var Geography: UIButton!
    @IBOutlet weak var Math: UIButton!
    @IBOutlet weak var Music: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Select Domain"
    }

    @IBAction func onDomainClick(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SoundsViewController") as! ViewController
        
        switch sender.restorationIdentifier {
        case "geography":
            vc.title = "Geography"
        case "math":
            vc.title = "Math"
        case "button":
            vc.title = "Naiba Stie"
        default: break
        }

        navigationController?.pushViewController(vc, animated: true)
    }
    
   
}

