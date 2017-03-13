//
//  Offer.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import Foundation
import Vacation

class Offer : VCStateTransferObject {
    var category        : String?
    var title           : String?
    var image           : String?
    var price           : String?   // Intensionally left as String
    var company         : String?
}
