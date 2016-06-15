//
//  RequestEvent.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Foundation

public class RequestEvent: Event {
    
    public func time(time: Double) -> RequestEvent {
        self.addParam(EventParam.Time.rawValue, value: time)
        return self
    }
    
    public func url(url: String) -> RequestEvent {
        self.addParam(EventParam.Url.rawValue, value: url)
        return self
    }
    
    public func requestMethod(method: String) -> RequestEvent {
        self.addParam(EventParam.RequestMethod.rawValue, value: method)
        return self
    }
}