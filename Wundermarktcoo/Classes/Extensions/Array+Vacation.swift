//
//  Array+Vacation.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import Foundation
import Vacation

extension VCStateTransferObject {
    
    class func getObjectsOfClass<T : VCStateTransferObject>(_ modelClass: T!, url: String!, success: @escaping (_ result: Array <T>) -> Void, failure: @escaping (_ error: Error) -> Void) {
        let manager = VCWebService.sharedInstance()!
        manager.get( url, parameters: nil, success: {
            (operation, responseObject) in
            if let fromJSONArray = responseObject as? Array<Any> {
                do {
                    let models = try MTLJSONAdapter.models(of: Offer.self, fromJSONArray: fromJSONArray) // TODO: Change to dynamic Type
                    success(models as! Array<T>)
                } catch {
                    failure(error)
                }
            }
        },
            failure: {
                (operation, error) in
                failure(error)
        })

    }
}
