//
//  CardType.swift
//  GMS
//
//  Created by Sandeep Sahani on 30/01/25.
//

import Foundation

enum CardType {
    case dietUser(isNonVegetarian: Bool)
    case dietTrainer(isNonVegetarian: Bool)
    case exerciseUser
    case exerciseTrainer
}
