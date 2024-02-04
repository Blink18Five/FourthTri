//
//  Person.swift
//  FourthTri
//
//  Created by Jacob Best on 1/30/24.
//

import Foundation

struct Person: Codable {
    var firstName: String
    var middleName: String?
    var lastName: String
    var age: Int
    private(set) var joinDate: Int
    private var creditCardInfo: [CreditCard]
    
    struct CreditCard: Codable {
        var number: UInt32
        var cvc: UInt8
        var name: String
    }
}
