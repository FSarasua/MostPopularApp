//
//  Endpoint.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

struct Endpoint {
    static let baseURL = "https://api.nytimes.com/svc"
    static let mostPopular = "/mostpopular/v2"
    
    
    static let keyToken = "api-key"
    static let token = "2bB0BGGe2pysadVQorASzqyClBzI5w1G"
    
    static let emailed = "/emailed"
    static let shared = "/shared"
    static let viewed = "/viewed"
    
    static let allSections = "/all-sections"
    
    static let facebook = "/facebook"
    static let twitter = "/twitter"
    static let facebookAndTwitter = "/facebook;twitter"
    
    static let day = "/1"
    static let week = "/7"
    static let month = "/30"
    
    static let jsonEnd = ".json?"
}
