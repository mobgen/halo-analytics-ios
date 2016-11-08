//
//  HaloAnalytics.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Halo

extension CoreManager {

    public func logEvent(_ event: Event) {
        let _ = self.addons.map { addon in
            if let logger = addon as? AnalyticsAddon {
                logger.logEvent(event: event)
            }
        }
    }

}
