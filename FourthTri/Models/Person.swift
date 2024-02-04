//
//  Person.swift
//  FourthTri
//
//  Created by Jacob Best on 1/30/24.
//

import Foundation

struct Person: Codable {
    var email: String = ""
    var password: String = ""
    var firstName: String = ""
    var middleName: String?
    var lastName: String = ""
    var age: Int?
    private(set) var joinDate: Int?
}
