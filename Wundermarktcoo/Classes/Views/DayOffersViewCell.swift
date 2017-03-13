//
//  DayOffersViewCell.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit

class DayOffersViewCell: UICollectionViewCell, OfferDisplaying {
    @IBOutlet var imageView : UIImageView?
    @IBOutlet weak var offerNameLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    
    func setOffer(_ offer: Offer) {
        if (offer.image != nil){
            imageView?.setImageWith(URL(string: offer.image!)!)
        }
        if (offer.title != nil){
            offerNameLabel.text = offer.title
        }
        if (offer.company != nil){
            companyNameLabel.text = offer.company
        }
    }
}
