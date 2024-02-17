//
//  File.swift
//  FourthTri
//
//  Created by Jacob Best on 1/30/24.
//

import Foundation

final class Token: Codable {
  var id: UUID?
  var value: String
  
  init(value: String) {
    self.value = value
  }
}
