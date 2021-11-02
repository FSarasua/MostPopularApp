//
//  FilterRouter.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

final class FilterRouter {
    
    static func view() -> FilterViewController {
        
        let router = FilterRouter()
        let viewModel = FilterViewModel(router: router)
        let view = FilterViewController()
        
        view.viewModel = viewModel
        
        return view
    }
}
