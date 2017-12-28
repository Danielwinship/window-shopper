//
//  Wage.swift
//  window-shopper
//
//  Created by Daniel Winship on 12/28/17.
//  Copyright © 2017 Daniel Winship. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage:Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
