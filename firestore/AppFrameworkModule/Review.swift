//
//  Review.swift
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

public struct Review: Identifiable, Codable {
    public init(id: String = UUID().uuidString, rating: Int, userID: String, username: String, text: String, date: Timestamp) {
        self.id = id
        self.rating = rating
        self.userID = userID
        self.username = username
        self.text = text
        self.date = date
    }
    
  public var id: String = UUID().uuidString

  public var rating: Int // Can also be enum
  var userID: String
  public var username: String
  public var text: String
  var date: Timestamp

  enum CodingKeys: String, CodingKey {
    case rating
    case userID = "userId"
    case username = "userName"
    case text
    case date
  }
}
