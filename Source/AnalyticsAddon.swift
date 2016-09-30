//
//  AnalyticsManager.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Halo
import Foundation
import UIKit

@objc(HaloAnalyticsAddon)
public class AnalyticsAddon: NSObject, Halo.Addon, Halo.NetworkAddon {

    private var provider: AnalyticsProvider
    private var logNetwork: Bool

    public var addonName = "Analytics"

    public init(provider: AnalyticsProvider, logNetwork: Bool = false) {
        self.provider = provider
        self.logNetwork = logNetwork
    }

    // MARK: Addon protocol implementation

    public func setup(haloCore core: CoreManager, completionHandler handler: ((Addon, Bool) -> Void)?) {

        if self.logNetwork {
            Halo.Manager.network.registerAddon(addon: self)
        }

        self.provider.setup()
        handler?(self, true)
    }

    public func startup(haloCore core: CoreManager, completionHandler handler: ((Addon, Bool) -> Void)?) {
        handler?(self, true)
    }

    public func willRegisterAddon(haloCore core: CoreManager) {

    }

    public func didRegisterAddon(haloCore core: CoreManager) {

    }

    public func willRegisterUser(haloCore core: CoreManager) {

    }

    public func didRegisterUser(haloCore core: CoreManager) {

    }

    public func applicationDidFinishLaunching(application app: UIApplication, core: CoreManager) {

    }

    public func applicationDidEnterBackground(application app: UIApplication, core: CoreManager) {

    }

    public func applicationDidBecomeActive(application app: UIApplication, core: CoreManager) {

    }

    public func application(application app: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData, core: CoreManager) {

    }

    public func application(application app: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError, core: CoreManager) {

    }

    public func application(application app: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject], core: CoreManager, fetchCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void) {

    }

    // MARK: Network addon

    public func willPerformRequest(request request: NSURLRequest) {

    }

    public func didPerformRequest(request request: NSURLRequest, time: NSTimeInterval, response: NSURLResponse?) {
        let event = RequestEvent(name: EventType.Request.rawValue).time(value: time).url(value: request.URL!.absoluteString!).requestMethod(value: request.HTTPMethod!)
        self.provider.logEvent(event: event)
    }

    // MARK: Logging events

    public func logEvent(event event: Event) -> Void {
        self.provider.logEvent(event: event)
    }

    public func logRequestEvent(event event: RequestEvent) -> Void {
        self.provider.logEvent(event: event)
    }

    public func logTransactionEvent(event event: TransactionEvent) -> Void {
        self.provider.logEvent(event: event)
    }

}
