//
//  BaseOfferViewController.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit
import Vacation

class BaseOfferViewController: UICollectionViewController {
    var offers : Array <Offer> = []
    var errorMessage = "Loading Offers"
    var offersURL = URLConstants.offersOfTheDay
    var cellReuseIdentifier = "BaseOfferViewController" //TODO: Add Exception throw for abstract class
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateData()
    }
    
    private func updateData() {
        VCStateTransferObject.getObjectsOfClass(Offer.self, url: offersURL, success: { (array) in
            self.offers = array
            self.reloadData()
        }) { (error) in
            ErrorManager.logError(error, comment: self.errorMessage)
        }
    }
    
    func reloadData() {
        self.collectionView?.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return offers.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as! BaseOfferViewCell
        cell.setOffer(offers[indexPath.row])
        return cell
    }
    
}
