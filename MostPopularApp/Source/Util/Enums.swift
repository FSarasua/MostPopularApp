//
//  Enums.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

// Flow control
enum ErrorType: String {
    case webView
    case service
    case JSONParser
    case none
}

// Server
enum Format: String, Codable {
    case mediumThreeByTwo210 = "mediumThreeByTwo210"
    case mediumThreeByTwo440 = "mediumThreeByTwo440"
    case standardThumbnail = "Standard Thumbnail"
}

enum Subtype: String, Codable {
    case empty = ""
    case photo = "photo"
}

enum MediaType: String, Codable {
    case image = "image"
}

enum Source: String, Codable {
    case newYorkTimes = "New York Times"
}

enum ResultType: String, Codable {
    case article = "Article"
    case interactive = "Interactive"
}
