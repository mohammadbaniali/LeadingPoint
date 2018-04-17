//
//  NotificationService.swift
//  LPService
//
//  Created by User on 4/17/18.
//  Copyright © 2018 leadingpoint. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class NotificationService{
    
    let url="https://apwat.friendioman.com/OMSChannelRestServices/OnlineChannelServices.svc/GetLookups"
    
    private init() { }
    public static let sharedInstance = NotificationService()
    
    public func setStatus(json:JSON)-> Bool{
        var isSucess=false
        Alamofire.request(url, method: .post ,parameters:json.dictionaryObject,encoding: JSONEncoding.default).responseJSON {  response in
            if response.response?.statusCode == 200 {
                isSucess=true
            }
            else {
                isSucess=false
            }
        }
        return isSucess
    }
}
