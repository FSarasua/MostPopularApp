//
//  ListRouter.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation
import UIKit

final class ListRouter {
    
    static func view(filter: FilterModel) -> ListViewController {
        
        let router = ListRouter()
        let model = ListModel(filter: filter, results: [ResultModel]())
        let viewModel = ListViewModel(router: router, data: model)
        let view = ListViewController()
        
        viewModel.delegate = view
        view.viewModel = viewModel
        
        return view
    }
}
