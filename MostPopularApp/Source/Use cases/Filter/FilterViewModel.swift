//
//  FilterViewModel.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

class FilterViewModel {
    var router: FilterRouter
    var data = FilterModel()
    
    internal init(router: FilterRouter, data: FilterModel = FilterModel()) {
        self.router = router
        self.data = data
    }
}
