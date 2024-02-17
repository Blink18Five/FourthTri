//
//  ResourceRequest.swift
//  FourthTri
//
//  Created by Jacob Best on 2/7/24.
//

import Foundation

let apiHostname = "http://localhost:8080"

struct ResourceRequest<ResourceType> where ResourceType: Codable {
  let baseURL = "\(apiHostname)/api/"
  let resourceURL: URL
  
  init(resourcePath: String) {
    guard let resourceURL = URL(string: baseURL) else {
      fatalError("Failed to convert baseURL to a URL")
    }
    self.resourceURL = resourceURL.appendingPathComponent(resourcePath)
  }
}
