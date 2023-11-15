//
//  Car.swift
//  SwiftUIStoryTemplate
//
//  Created by Baye Hanne on 11/14/23.
//

import Foundation
import SwiftUI

struct Car {
    var make: String
    var model: String
    var color: Color
    var currentSpeed: Int = 10
    
    mutating func accelerate () {
        currentSpeed += 10
    }
}
