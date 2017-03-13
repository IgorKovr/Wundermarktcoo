//
//  MoreOffersViewCell.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import Foundation
import UIKit

class MoreOffersViewCell: UICollectionViewCell, OfferDisplaying {
    @IBOutlet var imageView : UIImageView?
    @IBOutlet weak var offerNameLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1
        self.clipsToBounds = true
        self.backgroundColor = UIColor.white
    }
    
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
        if (offer.price != nil){
            priceLabel.text = "€ \(offer.price!)" // TODO: Add Formatted String
        }
    }
    @IBAction func likeButtonTap(_ sender: UIButton) {
        sender.isHighlighted = !sender.isHighlighted
    }
}
