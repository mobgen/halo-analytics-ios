//
//  AnalyticsProvider.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 05/07/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Foundation

public protocol AnalyticsProvider {
    
    func setup()
    func logEvent(event: Event)
    
}