//
//  DetailModel.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

struct DetailModel {
    let title: String
    let url: String
    
    init() {
        self.title = ""
        self.url = ""
    }
    
    internal init(title: String, url: String) {
        self.title = title
        self.url = url
    }
    
    internal init(result: ResultModel) {
        self.title = result.title
        self.url = result.url
    }
}
