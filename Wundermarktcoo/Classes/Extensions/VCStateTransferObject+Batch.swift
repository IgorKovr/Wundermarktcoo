//
//  VCStateTransferObject+Batch.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import Foundation
import Vacation

extension VCStateTransferObject {
    
    
    /**
     Method for fetching Array of VCStateTransferObject's
     
     - parameter modelClass - the class that represents the model which appears in JSON array.
     Should be subclass of VCStateTransferObject.
     
     - parameter url - enpoint url
     - parameter success - succes callback, returns array of parsed objects.
     - parameter failurs - failure callback, returns error
     
     */
    
    class func getObjectsOfClass <T : VCStateTransferObject>(_ modelClass: T.Type, url: String!, success: @escaping (_ result: Array
        <T>) -> Void, failure: @escaping (_ error: Error) -> Void) {
        
        let manager = VCWebService.sharedInstance()!
        manager.get( url, parameters: nil, success: {
            (operation, responseObject) in
            if let fromJSONArray = responseObject as? Array<Any> {
                do {
                    let models = try MTLJSONAdapter.models(of: modelClass, fromJSONArray: fromJSONArray)
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
