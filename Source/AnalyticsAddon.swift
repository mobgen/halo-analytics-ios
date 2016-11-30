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
open class AnalyticsAddon: NSObject, Halo.Addon, Halo.NetworkAddon {

    fileprivate var provider: AnalyticsProvider
    fileprivate var logNetwork: Bool

    open var addonName = "Analytics"

    public init(provider: AnalyticsProvider, logNetwork: Bool = false) {
        self.provider = provider
        self.logNetwork = logNetwork
    }

    // MARK: Addon protocol implementation

    open func setup(haloCore core: CoreManager, completionHandler handler: ((Addon, Bool) -> Void)?) {

        if self.logNetwork {
            Halo.Manager.network.registerAddon(addon: self)
        }

        self.provider.setup()
        handler?(self, true)
    }

    open func startup(haloCore core: CoreManager, completionHandler handler: ((Addon, Bool) -> Void)?) {
        handler?(self, true)
    }

    open func willRegisterAddon(haloCore core: CoreManager) {

    }

    open func didRegisterAddon(haloCore core: CoreManager) {

    }

    // MARK: Network addon

    open func willPerformRequest(request: URLRequest) {

    }

    open func didPerformRequest(request: URLRequest, time: TimeInterval, response: URLResponse?) {
        let event = RequestEvent(name: EventType.Request.rawValue).time(value: time).url(value: request.url!.absoluteString).requestMethod(value: request.httpMethod!)
        self.provider.logEvent(event: event)
    }

    // MARK: Logging events

    open func logEvent(event: Event) -> Void {
        self.provider.logEvent(event: event)
    }

    open func logRequestEvent(event: RequestEvent) -> Void {
        self.provider.logEvent(event: event)
    }

    open func logTransactionEvent(event: TransactionEvent) -> Void {
        self.provider.logEvent(event: event)
    }

}
