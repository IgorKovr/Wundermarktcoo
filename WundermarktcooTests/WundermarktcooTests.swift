//
//  WundermarktcooTests.swift
//  WundermarktcooTests
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import XCTest
import Vacation

@testable import Wundermarktcoo

class WundermarktcooTests: XCTestCase {
    let manager = AFHTTPSessionManager(baseURL: URL(string: URLConstants.base))
    
    override func setUp() {
        super.setUp()
    }
    
    
    func testOffersOfTheDay() {
        let expectation = self.expectation(description: "fetch")
        manager.get(
            URLConstants.offersOfTheDay,
            parameters: nil,
            success:
            {
                (operation, responseObject) in
                if let fromJSONArray = responseObject as? Array<Any> {
                    print(fromJSONArray)
                    do {
                        let models = try MTLJSONAdapter.models(of: Offer.self, fromJSONArray: fromJSONArray)
                        print(models)
                        XCTAssert(models.count > 0, "offersOfTheDay Pass")
                        expectation.fulfill()
                    } catch {
                        XCTFail()
                        expectation.fulfill()
                    }
                }
        },
            failure:
            {
                (operation, error) in
                print("Error: " + error.localizedDescription)
                XCTFail()
                expectation.fulfill()
        })
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testInterestingOffers() {
        let expectation = self.expectation(description: "fetch")
        manager.get(
            URLConstants.interestingOffers,
            parameters: nil,
            success:
            {
                (operation, responseObject) in
                if let fromJSONArray = responseObject as? Array<Any> {
                    print(fromJSONArray)
                    do {
                        let models = try MTLJSONAdapter.models(of: Offer.self, fromJSONArray: fromJSONArray)
                        print(models)
                        XCTAssert(models.count > 0, "offersOfTheDay Pass")
                        expectation.fulfill()
                    } catch {
                        XCTFail()
                        expectation.fulfill()
                    }
                }
        },
            failure:
            {
                (operation, error) in
                print("Error: " + error.localizedDescription)
                XCTFail()
                expectation.fulfill()
        })
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMoreOffers() {
        let expectation = self.expectation(description: "fetch")
        manager.get(
            URLConstants.moreOffers,
            parameters: nil,
            success:
            {
                (operation, responseObject) in
                if let fromJSONArray = responseObject as? Array<Any> {
                    print(fromJSONArray)
                    do {
                        let models = try MTLJSONAdapter.models(of: Offer.self, fromJSONArray: fromJSONArray)
                        print(models)
                        XCTAssert(models.count > 0, "offersOfTheDay Pass")
                        expectation.fulfill()
                    } catch {
                        XCTFail()
                        expectation.fulfill()
                    }
                }
        },
            failure:
            {
                (operation, error) in
                print("Error: " + error.localizedDescription)
                XCTFail()
                expectation.fulfill()
        })
        self.waitForExpectations(timeout: 5, handler: nil)
    }
    
}
