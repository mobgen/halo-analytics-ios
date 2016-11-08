//
//  TransactionEvent.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Foundation

open class TransactionEvent: Event {

    open func quantity(_ value: Int) -> TransactionEvent {
        self.addParam(name: EventParam.Quantity.rawValue, value: value as AnyObject)
        return self
    }

    open func price(_ value: Int) -> TransactionEvent {
        self.addParam(name: EventParam.Price.rawValue, value: value as AnyObject)
        return self
    }

    open func productName(_ value: String) -> TransactionEvent {
        self.addParam(name: EventParam.ProductName.rawValue, value: value as AnyObject)
        return self
    }

    open func productCategory(_ value: String) -> TransactionEvent {
        self.addParam(name: EventParam.ProductCategory.rawValue, value: value as AnyObject)
        return self
    }

    open func productId(_ value: String) -> TransactionEvent {
        self.addParam(name: EventParam.ProductId.rawValue, value: value as AnyObject)
        return self
    }

    open func currency(_ value: String) -> TransactionEvent {
        self.addParam(name: EventParam.Currency.rawValue, value: value as AnyObject)
        return self
    }

}
