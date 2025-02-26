//
//  Restaurant.swift
//  FirestoreSwiftUIExample
//
//  Copyright (c) 2021 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import FirebaseFirestore

public struct Restaurant: Identifiable, Codable {
    public init(id: String = UUID().uuidString, reference: DocumentReference? = nil, name: String, category: String, city: String, price: Int, ratingCount: Int, averageRating: Float, photo: URL) {
        self.id = id
        self.reference = reference
        self.name = name
        self.category = category
        self.city = city
        self.price = price
        self.ratingCount = ratingCount
        self.averageRating = averageRating
        self.photo = photo
    }

  public var id: String = UUID().uuidString
  public var reference: DocumentReference?

  public var name: String
  public var category: String // Could become an enum
  public var city: String
  public var price: Int // from 1-3; could also be an enum
  public var ratingCount: Int // numRatings
  public var averageRating: Float
  public var photo: URL

  enum CodingKeys: String, CodingKey {
    case reference
    case name
    case category
    case city
    case price
    case ratingCount = "numRatings"
    case averageRating = "avgRating"
    case photo
  }
}
