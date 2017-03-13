//
//  DayOffersViewController.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import UIKit
import Vacation

class DayOffersViewController: BaseOfferViewController {
    override public var errorMessage: String { get { return "Loading Day Offers" } set {} }
    override public var offersURL: String { get { return URLConstants.offersOfTheDay } set {} }
    override public var cellReuseIdentifier: String { get { return "DayOffersViewCell" } set {} }
}
