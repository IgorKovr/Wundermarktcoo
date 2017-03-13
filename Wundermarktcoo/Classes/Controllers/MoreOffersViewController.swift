//
//  MoreOffersViewcontroller.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit
import Vacation

class MoreOffersViewController: UICollectionViewController {
    var offers : Array <Offer> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateData()
    }
    
    private func updateData() {
        VCStateTransferObject.getObjectsOfClass(Offer(), url: URLConstants.moreOffers, success: { (array) in
            self.offers = array
            self.reloadData()
        }) { (error) in
            ErrorManager.logError(error, comment: "Loading More Offers")
        }
    }
    
    func reloadData() {
        self.collectionView?.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return offers.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MoreOffersViewCell", for: indexPath) as! MoreOffersViewCell
        cell.setOffer(offers[indexPath.row])
        return cell
    }
    
}
