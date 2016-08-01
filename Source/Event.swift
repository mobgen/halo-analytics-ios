//
//  Event.swift
//  HaloAnalyticsSDK
//
//  Created by Borja Santos-Díez on 14/06/16.
//  Copyright © 2016 Mobgen Technology. All rights reserved.
//

import Foundation

public enum EventParam: String {
    case AchievementId = "achievement_id",
    Character = "character",
    TravelClass = "travel_class",
    ContentType = "content_type",
    Currency = "currency",
    Coupon = "coupon",
    StartDate = "start_date",
    EndDate = "end_date",
    FlightNumber = "flight_number",
    GroupId = "group_id",
    ItemCategory = "item_category",
    ItemId = "item_id",
    ItemLocationId = "item_location_id",
    ItemName = "item_name",
    Location = "location",
    Level = "level",
    SignUpMethod = "sign_up_method",
    NumberOfNights = "number_of_nights",
    NumberOfPassengers = "number_of_passengers",
    NumberOfRooms = "number_of_rooms",
    Destination = "destination",
    Origin = "origin",
    ProductCategory = "product_category",
    ProductId = "product_id",
    ProductName = "product_name",
    Price = "price",
    Quantity = "quantity",
    RequestMethod = "request_method",
    Score = "score",
    Shipping = "shipping",
    SearchTerm = "search_term",
    Tax = "tax",
    Time = "time",
    TransactionId = "transaction_id",
    Url = "url",
    Value = "value",
    VirtualCurrencyName = "virtual_currency_name"
}

public enum EventType: String {
    case AddPaymentInfo = "add_payment_info",
    AddToCart = "add_to_cart",
    AddToWishlist = "add_to_wishlist",
    AppOpen = "app_open",
    BeginCheckout = "begin_checkout",
    Click = "click",
    EcommercePurchase = "ecommerce_purchase",
    GenerateLead = "generate_lead",
    JoinGroup = "join_group",
    LevelUp = "level_up",
    Login = "login",
    PostScore = "post_score",
    PresentOffer = "present_offer",
    PurchaseRefund = "purchase_refund",
    Request = "request",
    Search = "search",
    SelectContent = "select_content",
    Share = "share",
    SignUp = "sign_up",
    SpendVirtualCurrency = "spend_virtual_currency",
    TutorialBegin = "tutorial_begin",
    TutorialComplete = "tutorial_complete",
    UnlockAchievement = "unlock_achievement",
    ViewItem = "view_item",
    ViewItemList = "view_item_list",
    ViewSearchResults = "view_search_results"
}

public class Event {
    
    internal private(set) var name: String
    internal private(set) var params: [String: AnyObject]
    
    public init(name: String) {
        self.name = name
        self.params = [:]
    }
    
    public func addParam(name: String, value: AnyObject) -> Event {
        params[name] = value
        return self
    }
}
