//
//  InterestingOffersViewCell.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit

class InterestingOffersViewCell: BaseOfferViewCell {
    override func awakeFromNib() {
        self.layer.cornerRadius = 4
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 0.5
        self.clipsToBounds = true
    }
}
