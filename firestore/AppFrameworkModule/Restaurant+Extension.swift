//
//  Restaurant+Extension.swift
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

extension Restaurant {
  public var ratingsCollection: CollectionReference? {
    return reference?.collection("ratings")
  }

  public static let cities = [
    "Albuquerque",
    "Arlington",
    "Atlanta",
    "Austin",
    "Baltimore",
    "Boston",
    "Charlotte",
    "Chicago",
    "Cleveland",
    "Colorado Springs",
    "Columbus",
    "Dallas",
    "Denver",
    "Detroit",
    "El Paso",
    "Fort Worth",
    "Fresno",
    "Houston",
    "Indianapolis",
    "Jacksonville",
    "Kansas City",
    "Las Vegas",
    "Long Beach",
    "Los Angeles",
    "Louisville",
    "Memphis",
    "Mesa",
    "Miami",
    "Milwaukee",
    "Nashville",
    "New York",
    "Oakland",
    "Oklahoma",
    "Omaha",
    "Philadelphia",
    "Phoenix",
    "Portland",
    "Raleigh",
    "Sacramento",
    "San Antonio",
    "San Diego",
    "San Francisco",
    "San Jose",
    "Tucson",
    "Tulsa",
    "Virginia Beach",
    "Washington",
  ]

  public static let categories = [
    "Brunch", "Burgers", "Coffee", "Deli", "Dim Sum", "Indian", "Italian",
    "Mediterranean", "Mexican", "Pizza", "Ramen", "Sushi",
  ]

  public static let prices = [1, 2, 3]

  public static let sortOptions = ["category", "city", "price", "avgRating"]

  public static func imageURL(forName name: String) -> URL {
    let number = (abs(name.hashValue) % 22) + 1
    let URLString =
      "https://storage.googleapis.com/firestorequickstarts.appspot.com/food_\(number).png"
    return URL(string: URLString)!
  }

  public var imageURL: URL {
    return Restaurant.imageURL(forName: name)
  }

  public static func priceString(from price: Int) -> String {
    if !Restaurant.prices.contains(price) {
      fatalError("price must be between one and three")
    }

    return String(repeating: "$", count: price)
  }
}
