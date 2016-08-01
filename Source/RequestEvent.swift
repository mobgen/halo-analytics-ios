//
//  RequestEvent.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Foundation

public class RequestEvent: Event {
    
    public func time(value: NSTimeInterval) -> RequestEvent {
        self.addParam(EventParam.Time.rawValue, value: value)
        return self
    }
    
    public func url(value: String) -> RequestEvent {
        self.addParam(EventParam.Url.rawValue, value: value)
        return self
    }
    
    public func requestMethod(value: String) -> RequestEvent {
        self.addParam(EventParam.RequestMethod.rawValue, value: value)
        return self
    }
}