//
//  ViewController.swift
//  test Configurable App Icon
//
//  Created by iSlam AbdelAziz on 19/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    private
    func changeIcon(to iconName: String?) {
        // 1
        guard UIApplication.shared.supportsAlternateIcons else {
            print("Doesn't Support")
            
            return
        }
        
        // 2
        UIApplication.shared.setAlternateIconName(iconName, completionHandler: { (error) in
            // 3
            if let error = error {
                print("App icon failed to change due to \(error.localizedDescription)")
            } else {
                print("App icon changed successfully")
            }
        })
    }
    
    
    
    //MARK: - Actions
    
    @IBAction func setDefaultIcon(){
        changeIcon(to: nil)
    }
    
    @IBAction func setWeatherIcon(){
        //  "WheatherAppIcon"
        changeIcon(to: "Weather")
        
    }
    
    @IBAction func setBlocksIcon(){
        //  "blockesAPPIcon"
        changeIcon(to: "iTunesArtwork")
        
    }
    
    
    
}

