//
//  FirebaseAnalyticsProvider.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Foundation
import FirebaseAnalytics

public class FirebaseAnalyticsProvider: AnalyticsProvider {

    public init() {}

    public func setup() {
        FIRApp.configure()
    }

    public func logEvent(event: Event) {
        let params = event.params as! [String: NSObject]
        FIRAnalytics.logEventWithName(event.name, parameters: params)
    }

}
