//
//  ViewController.swift
//  LocationOrContactManager
//
//  Created by Nick luo on 2018/12/29.
//  Copyright © 2018 Nick luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //获取通讯录
    @IBAction func getContact(_ sender: Any) {
        
        ContactManager().getContacts()
       
    }
    
    //获取定位信息
    @IBAction func getLocation(_ sender: Any) {
        
        LocationManager.shared.getLocationInfo { (error, locationModel) in
            //print(error, locationModel?.latitude, locationModel?.longitude, locationModel?.placemark?.addressDictionary, locationModel?.placemark?.addressDictionary!["City"])
            
            print(locationModel?.latitude, locationModel?.longitude, locationModel?.placemark?.addressDictionary!["FormattedAddressLines"],  locationModel?.placemark?.addressDictionary!["Name"])
            
             }
    }
}

