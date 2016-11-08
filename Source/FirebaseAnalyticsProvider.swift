//
//  FirebaseAnalyticsProvider.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Foundation
import FirebaseAnalytics

open class FirebaseAnalyticsProvider: AnalyticsProvider {

    public init() {}

    open func setup() {
        FIRApp.configure()
    }

    open func logEvent(event: Event) {
        let params = event.params as! [String: NSObject]
        FIRAnalytics.logEvent(withName: event.name, parameters: params)
    }

}
