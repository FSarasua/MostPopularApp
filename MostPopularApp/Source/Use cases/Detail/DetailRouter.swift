//
//  DetailRouter.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

final class DetailRouter {
    
    static func view(result: ResultModel) -> DetailViewController {
        
        let router = DetailRouter()
        let model = DetailModel(result: result)
        let viewModel = DetailViewModel(router: router, data: model)
        let view = DetailViewController()
        
        view.viewModel = viewModel
        
        return view
    }
}
