//
//  RequestEvent.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Foundation

public class RequestEvent: Event {

    public func time(value value: NSTimeInterval) -> RequestEvent {
        self.addParam(name: EventParam.Time.rawValue, value: value)
        return self
    }

    public func url(value value: String) -> RequestEvent {
        self.addParam(name: EventParam.Url.rawValue, value: value)
        return self
    }

    public func requestMethod(value value: String) -> RequestEvent {
        self.addParam(name: EventParam.RequestMethod.rawValue, value: value)
        return self
    }
}
