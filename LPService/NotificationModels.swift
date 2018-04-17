//
//  NotificationModels.swift
//  LPService
//
//  Created by User on 4/17/18.
//  Copyright © 2018 leadingpoint. All rights reserved.
//

import Foundation
import SwiftyJSON

class NotificationModels: Codable {
    let devideID: String
    let status: String
    let receivedDate: Date
    
    enum CodingKeys: String, CodingKey {
        case devideID = "DevideId"
        case status = "Status"
        case receivedDate = "ReceivedDate"
    }
    
    init(devideID: String, status: String, receivedDate: Date) {
        self.devideID = devideID
        self.status = status
        self.receivedDate = receivedDate
    }
    
    func toJSON() -> JSON {
        return [
            "DevideId": devideID as Any,
            "Status": status as Any,
            "ReceivedDate": receivedDate as Any,
        ]
    }
}
