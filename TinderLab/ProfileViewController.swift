//
//  ProfileViewController.swift
//  TinderLab
//
//  Created by Thalia  on 3/25/18.
//  Copyright © 2018 Thalia . All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var doneImage: UIImageView!
    @IBOutlet weak var cardImage: UIImageView!
    var newImage: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        cardImage.image = newImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onDoneTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
