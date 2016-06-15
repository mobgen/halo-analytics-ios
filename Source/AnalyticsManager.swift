//
//  AnalyticsManager.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Halo

public protocol AnalyticsProvider {
    
    func setup()
    func logEvent(event: Event)
    
}

public class AnalyticsManager: HaloManager {
    
    private var provider: AnalyticsProvider
    
    public init(provider: AnalyticsProvider) {
        self.provider = provider
    }
    
    public func startup(completionHandler handler: ((Bool) -> Void)?) {
        self.provider.setup()
    }
    
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