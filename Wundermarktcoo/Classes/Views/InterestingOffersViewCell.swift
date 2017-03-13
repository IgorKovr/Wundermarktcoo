//
//  InterestingOffersViewCell.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit

class InterestingOffersViewCell: UICollectionViewCell, OfferDisplaying {
    @IBOutlet var imageView : UIImageView?
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 4
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1
        self.clipsToBounds = true
    }
    
    func setOffer(_ offer: Offer) {
        if (offer.image != nil){
            imageView?.setImageWith(URL(string: offer.image!)!)
        }
    }
}
