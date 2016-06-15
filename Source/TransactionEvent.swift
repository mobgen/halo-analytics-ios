//
//  TransactionEvent.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Foundation

public class TransactionEvent: Event {
    
    public func quantity(value: Int) -> TransactionEvent {
        self.addParam(EventParam.Quantity.rawValue, value: value)
        return self
    }
    
    public func price(value: Int) -> TransactionEvent {
        self.addParam(EventParam.Price.rawValue, value: value)
        return self
    }
    
    
    
}