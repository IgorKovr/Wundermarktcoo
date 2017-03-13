//
//  AppDelegate.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit
import Vacation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Set BaseURL for all request through VCWebService
        let manager = VCWebService.setBaseURL(URLConstants.base)!
        
        //Allow HTTPs connections
        manager.securityPolicy.allowInvalidCertificates = true;
        manager.securityPolicy.validatesDomainName = false;
        
        return true
    }
 
}
