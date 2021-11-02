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
    
    
    static let keyToken = "api-key="
    static let token = "2bB0BGGe2pysadVQorASzqyClBzI5w1G"
    
    static let emailed = "/mostemailed"
    static let shared = "/mostshared"
    static let viewed = "/mostviewed"
    
    static let allSections = "/all-sections"
    
    static let facebook = "/facebook"
    static let twitter = "/twitter"
    static let facebookAndTwitter = "/facebook;twitter"
    
    static let day = "/1.json?"
    static let week = "/7.json?"
    static let month = "/30.json?"
    
//    https://api.nytimes.com/svc/mostpopular/v2/all­sections/facebook;twitter/30.json ?api-key=2bB0BGGe2pysadVQorASzqyClBzI5w1G
    
    
    /* EJEMPLOS VÁLIDOS */
    
    /*
     
     https://api.nytimes.com/svc/mostpopular/v2/mostshared/all-sections/30.json?api-key=2bB0BGGe2pysadVQorASzqyClBzI5w1G
     https://api.nytimes.com/svc/mostpopular/v2/mostshared/all-sectionsapi-key=2bB0BGGe2pysadVQorASzqyClBzI5w1G
     
     */
}
