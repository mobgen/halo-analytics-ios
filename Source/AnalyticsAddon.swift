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

    public func setup(core: CoreManager, completionHandler handler: ((Addon, Bool) -> Void)?) {

        if self.logNetwork {
            Halo.Manager.network.registerAddon(self)
        }

        self.provider.setup()
        handler?(self, true)
    }

    public func startup(core: CoreManager, completionHandler handler: ((Addon, Bool) -> Void)?) {
        handler?(self, true)
    }

    public func willRegisterAddon(core: CoreManager) {

    }

    public func didRegisterAddon(core: CoreManager) {

    }

    public func willRegisterUser(core: CoreManager) {

    }

    public func didRegisterUser(core: CoreManager) {

    }

    public func applicationDidFinishLaunching(application: UIApplication, core: CoreManager) {

    }

    public func applicationDidEnterBackground(application: UIApplication, core: CoreManager) {

    }

    public func applicationDidBecomeActive(application: UIApplication, core: CoreManager) {

    }

    public func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData, core: CoreManager) {

    }

    public func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError, core: CoreManager) {

    }

    public func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject], core: CoreManager, fetchCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void) {

    }

    // MARK: Network addon

    public func willPerformRequest(request: NSURLRequest) {

    }

    public func didPerformRequest(request: NSURLRequest, time: NSTimeInterval, response: NSURLResponse?) {
        let event = RequestEvent(name: EventType.Request.rawValue).time(time).url(request.URL!.absoluteString).requestMethod(request.HTTPMethod!)
        self.provider.logEvent(event)
    }

    // MARK: Logging events

    public func logEvent(event: Event) -> Void {
        self.provider.logEvent(event)
    }

    public func logRequestEvent(event: RequestEvent) -> Void {
        self.provider.logEvent(event)
    }

    public func logTransactionEvent(event: TransactionEvent) -> Void {
        self.provider.logEvent(event)
    }

}
