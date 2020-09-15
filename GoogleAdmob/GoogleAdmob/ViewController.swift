//
//  ViewController.swift
//  GoogleAdmob
//
//  Created by tomoya tanaka on 2020/09/15.
//  Copyright © 2020 Tomoya Tanaka. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.adUnitID = ""
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }


}

