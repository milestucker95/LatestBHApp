//
//  AppDelegate.swift
//  TimelinesSwift
//
//  Created by Twitter  on 5/26/15.
//  Copyright (c) 2015 Twitter. All rights reserved.
//

import UIKit
import TwitterKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var consumer_key: String = ""
    var consumer_secret: String = ""
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        // grab app keys from Twitter.plist in app bundle
        // avoids having to have that file in source control...
        if let url = Bundle.main.url(forResource:"Twitter", withExtension: "plist") {
            do {
                let data = try Data(contentsOf:url)
                let swiftDictionary = try PropertyListSerialization.propertyList(from: data, options: [], format: nil) as! [String:Any]
                consumer_key = swiftDictionary["consumer_key"] as! String
                consumer_secret = swiftDictionary["consumer_secret"] as! String
            } catch {
                print(error)
            }
        }
        
        Twitter.sharedInstance().start(withConsumerKey:consumer_key, consumerSecret:consumer_secret)
        
        return true
    }
}

