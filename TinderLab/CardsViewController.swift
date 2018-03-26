//
//  CardsViewController.swift
//  TinderLab
//
//  Created by Thalia  on 3/14/18.
//  Copyright © 2018 Thalia . All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    @IBOutlet weak var cardView: UIImageView!
    var cardInitialCenter: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPanImage(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        let xFromCenter = cardView.center.x - view.center.x
        
        if sender.state == .began {
            cardInitialCenter = cardView.center
            print("Gesture began")
        } else if sender.state == .changed {
            cardView.center = CGPoint(x: cardInitialCenter.x + translation.x, y: cardInitialCenter.y )
            if xFromCenter > 0 {
                cardView.transform = CGAffineTransform(rotationAngle: CGFloat(Double(xFromCenter) * Double.pi / 360))
                print(translation.x)
            }else{
                cardView.transform = CGAffineTransform(rotationAngle: CGFloat(Double(xFromCenter) * Double.pi / 360))
                print(xFromCenter)

            }
            
            print("Gesture is changing")
        } else if sender.state == .ended {
            print("Gesture ended")
        }
    }

}
