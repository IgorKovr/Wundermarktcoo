//
//  BaseOfferViewCell.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit

class BaseOfferViewCell: UICollectionViewCell, OfferDisplaying {
    
    @IBOutlet var imageView : UIImageView?
    @IBOutlet weak var offerNameLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor.white
    }
    
    func setOffer(_ offer: Offer) {
        if ((offer.image != nil) && (imageView != nil)){
            imageView?.setImageWith(URL(string: offer.image!)!)
        }
        if ((offer.title != nil) && (offerNameLabel != nil)){
            offerNameLabel.text = offer.title
        }
        if ((offer.company != nil) && (companyNameLabel != nil)){
            companyNameLabel.text = offer.company
        }
        if ((offer.price != nil) && (priceLabel != nil)){
            priceLabel.text = "€ \(offer.price!)" // TODO: Add Formatted String
        }
    }
    
}
