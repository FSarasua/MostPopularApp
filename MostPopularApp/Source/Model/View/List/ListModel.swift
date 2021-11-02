//
//  ListModel.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

struct ListModel {
    var filter: FilterModel
    var results: [ResultModel]
    
    init() {
        self.filter = FilterModel()
        self.results = [ResultModel]()
    }
    
    internal init(filter: FilterModel, results: [ResultModel]) {
        self.filter = filter
        self.results = results
    }
}
