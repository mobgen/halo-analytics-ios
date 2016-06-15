//
//  HaloAnalytics.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Halo

extension Manager {
 
    public static var analytics: AnalyticsManager = {
        return AnalyticsManager(provider: FirebaseAnalyticsProvider())
    }()
    
}