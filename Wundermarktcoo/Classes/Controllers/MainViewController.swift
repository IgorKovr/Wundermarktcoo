//
//  MainViewController.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/14/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit

let offerSegueIdentifier = "showOfferSegue"

class MainViewController: UIViewController, BaseOfferViewControllerDelegate {
    
    func baseOfferViewController(_ baseOfferViewController: BaseOfferViewController, didSelect offer: Offer) {
        performSegue(withIdentifier: offerSegueIdentifier, sender: offer)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == nil) {
            return
        }
        
        
        switch segue.identifier! {
        case offerSegueIdentifier:
            let offerVC : OfferViewController = segue.destination as! OfferViewController
            offerVC.setOffer(sender as! Offer)
            break
        case "embedSegue":
            let offerVC : BaseOfferViewController = segue.destination as! BaseOfferViewController
            offerVC.delegate = self
            break
        default:
            break
        }
    }
}
