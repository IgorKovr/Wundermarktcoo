//
//  MoreOffersViewCell.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import Foundation
import UIKit

class MoreOffersViewCell: BaseOfferViewCell {
    
    @IBAction func likeButtonTap(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
}
