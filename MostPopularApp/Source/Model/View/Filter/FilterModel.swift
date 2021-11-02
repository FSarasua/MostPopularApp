//
//  FilterModel.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

struct FilterModel {
    var type: String
    var fonts: [String]
    var period: String
    
    init() {
        self.type = ""
        self.fonts = []
        self.period = ""
    }
    
    internal init(type: String, fonts: [String], period: String) {
        self.type = type
        self.fonts = fonts
        self.period = period
    }
}
