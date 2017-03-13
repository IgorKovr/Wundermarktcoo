//
//  DayOffersViewController.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit
import Vacation

class DayOffersViewController: UICollectionViewController {
    var offers : Array <Offer> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateData()
    }
    
    private func updateData() {
        VCStateTransferObject.getObjectsOfClass(Offer(), url: URLConstants.offersOfTheDay, success: { (array) in
            self.offers = array
            self.reloadData()
        }) { (error) in
            ErrorManager.logError(error, comment: "Loading Day Offers")
        }
    }
    
    func reloadData() {
        self.collectionView?.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return offers.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DayOffersViewCell", for: indexPath) as! DayOffersViewCell
        cell.setOffer(offers[indexPath.row])
        return cell
    }
    
}
