//
//  OfferViewController.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/14/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit

class OfferViewController: UIViewController, OfferDisplaying {
    @IBOutlet weak var titleButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    var currentOffer : Offer?
    
    override func viewWillAppear(_ animated: Bool) {
        if (currentOffer?.title != nil){
            titleButton.setTitle(currentOffer?.title, for: UIControlState.normal)
        }
        if (currentOffer?.image != nil){
            imageView.setImageWith(URL(string: (currentOffer?.image!)!)!)
        }
    }
    
    func setOffer(_ offer: Offer) {
       currentOffer = offer
    }
    
    @IBAction private func titleButtonTap(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
}
