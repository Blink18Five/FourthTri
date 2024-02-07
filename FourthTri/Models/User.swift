//
//  Person.swift
//  FourthTri
//
//  Created by Jacob Best on 1/30/24.
//

import Foundation

final class User: Codable {
  var firstName: String
  var middleName: String?
  var lastName: String
  var email: String
  var password: String
  
  init(firstName: String, middleName: String? = nil, lastName: String, email: String, password: String) {
    self.firstName = firstName
    self.middleName = middleName
    self.lastName = lastName
    self.email = email
    self.password = password
  }
}
