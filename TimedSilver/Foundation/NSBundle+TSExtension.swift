//
//  NSBundle+TSExtension.swift
//  TimedSilver
//  Source: https://github.com/hilen/TimedSilver
//
//  Created by Hilen on 8/5/16.
//  Copyright © 2016 Hilen. All rights reserved.
//

import Foundation

public extension NSBundle {
    public static var ts_appName: String {
        return NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleDisplayName") as! String
    }
    
    public static var ts_appVersion: String {
        return NSBundle.mainBundle().infoDictionary!["CFBundleShortVersionString"] as! String
    }
    
    public static var ts_appBuild: String {
        return NSBundle.mainBundle().objectForInfoDictionaryKey(kCFBundleVersionKey as String) as! String
    }
    
    public static var ts_bundleIdentifier: String {
        return NSBundle.mainBundle().infoDictionary!["CFBundleIdentifier"] as! String
    }
    
    public static var ts_bundleName: String {
        return NSBundle.mainBundle().infoDictionary!["CFBundleName"] as! String
    }
    
    public static var ts_appVersionAndBuild: String {
        let version = ts_appVersion, build = ts_appBuild
        return version == build ? "v\(version)" : "v\(version)(\(build))"
    }
}