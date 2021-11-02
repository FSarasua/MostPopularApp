//
//  DetailViewModel.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

class DetailViewModel {
    var router: DetailRouter
    var data = DetailModel()
    
    internal init(router: DetailRouter, data: DetailModel = DetailModel()) {
        self.router = router
        self.data = data
    }
}

