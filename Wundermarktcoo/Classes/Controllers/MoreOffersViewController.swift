//
//  MoreOffersViewcontroller.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit
import Vacation

class MoreOffersViewController: BaseOfferViewController {
    override public var errorMessage: String { get { return "Loading More Offers" } set {} }
    override public var offersURL: String { get { return URLConstants.moreOffers } set {} }
    override public var cellReuseIdentifier: String { get { return "MoreOffersViewCell" } set {} }
}
