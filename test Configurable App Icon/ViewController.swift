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


    @IBAction func doDefaultIcon(){
        changeIcon(to: nil)
    }
    
    @IBAction func doWeatherIcon(){
        //  "WheatherAppIcon"
        changeIcon(to: "Weather")

    }
    
    @IBAction func doBlockesIcon(){
        //  "blockesAPPIcon"
        changeIcon(to: "iTunesArtwork")

    }
    
    
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

}

