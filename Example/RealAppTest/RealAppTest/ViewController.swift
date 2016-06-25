//
//  ViewController.swift
//  RealAppTest
//
//  Created by Vahid Sayad on 2016-06-23.
//  Copyright © 2016 AppAnalytics. All rights reserved.
//

import UIKit
import AppAnalyticsSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appAna = AppAnalyticsSwift(accessKey: "919ea6c6-ae72-4aad-a980-7ba6218cd0c1")
        appAna.submitCampaign()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

