//
//  Dragon BallViewController.swift
//  Dragon Ball
//
//  Created by 陳庭楷 on 2018/4/27.
//  Copyright © 2018年 陳庭楷. All rights reserved.
//

import UIKit

class Dragon_BallViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBAction func redSliderValueChange(_ sender: UISlider) {
        
        self.ImageView.backgroundColor = UIColor(red: CGFloat(self.redSlider.value), green: CGFloat(self.greenSlider.value), blue: CGFloat(self.blueSlider.value), alpha: CGFloat(self.alphaSlider.value))
        
        let numberString = String(format: "%.2f" , sender.value)
        
        if sender == self.redSlider {
            
            self.redLabel.text = numberString
            
        }
        
        else if sender == self.greenSlider {
            
            self.greenLabel.text = numberString
            
        }
        
        else if sender == self.blueSlider {
            
            self.blueLabel.text = numberString
            
        }
        
        else {
            
            self.alphaLabel.text = numberString
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


