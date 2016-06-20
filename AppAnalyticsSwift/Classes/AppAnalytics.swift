//
//  AppAnalytic.swift
//  Pods
//
//  Created by Vahid Sayad on 2016-06-19.
//
//

import Foundation
import UIKit

public class AppAnalytics{
    
    private let _accessKey: String
    private var _APIURL = "http://appanalytics.ir/api/v1/iosservice/initialize/";
    private let _UUID: String
    
    //MARK: submitCampain Function
    public func submitCampaign(){
        let url = NSURL(string: self._APIURL + self._UUID)
        let request = NSMutableURLRequest(URL: url!)
        
        request.setValue(self._accessKey, forHTTPHeaderField: "Access-Key")
        
        NSURLSession.sharedSession().dataTaskWithRequest(request) { (data: NSData?, response: NSURLResponse?, error: NSError?) in
            if let data = data {
                print("AppAnalytic Info: [", String(data: data, encoding: NSUTF8StringEncoding)!,"]")
            }
            if let error = error {
                print("AppAnalytic Error: [\(error.localizedDescription)")
            }
            }.resume()
    }
    
    //MARK: Init
    public init(accessKey key: String){
        self._accessKey = key
        if let id = UIDevice.currentDevice().identifierForVendor {
            self._UUID = id.UUIDString
        } else {
            self._UUID = "error"
        }
    }
}