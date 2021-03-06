//
//  DatabaseManagerType.swift
//  ExponeaSDK
//
//  Created by Dominik Hádl on 11/04/2018.
//  Copyright © 2018 Exponea. All rights reserved.
//

import Foundation

/// Protocol to manage Tracking events
public protocol DatabaseManagerType: class {
    var customer: Customer { get }
    
    func trackEvent(with data: [DataType]) throws
    func trackEvent(with event: TrackEvent) throws
    
    func trackCustomer(with data: [DataType]) throws
    func trackCustomer(with customer: TrackCustomer) throws
    
    func fetchTrackCustomer() throws -> [TrackCustomer]
    func fetchTrackEvent() throws -> [TrackEvent]
    
    func delete(_ object: TrackCustomer) throws
    func delete(_ object: TrackEvent) throws
}
