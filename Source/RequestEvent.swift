//
//  RequestEvent.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Foundation

open class RequestEvent: Event {

    open func time(value: TimeInterval) -> RequestEvent {
        self.addParam(name: EventParam.Time.rawValue, value: value as AnyObject)
        return self
    }

    open func url(value: String) -> RequestEvent {
        self.addParam(name: EventParam.Url.rawValue, value: value as AnyObject)
        return self
    }

    open func requestMethod(value: String) -> RequestEvent {
        self.addParam(name: EventParam.RequestMethod.rawValue, value: value as AnyObject)
        return self
    }
}
