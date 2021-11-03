//
//  ListViewModel.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation
import UIKit

class ListViewModel {
    var router: ListRouter
    var data = ListModel()
    var delegate: ListViewProtocol?
    
    internal init(router: ListRouter, data: ListModel = ListModel(), delegate: ListViewProtocol? = nil) {
        self.router = router
        self.data = data
        self.delegate = delegate
    }
    
    func startSearch() {
        let url = buildURL()
        
        MostPopularAPI.shared.request(url) { listServerModel  in
            
            if let results = listServerModel.results {
                self.data = ListModel()
                
                for result in results {
                    self.data.results.append(ResultModel(resultServer: result))
                }
            }
            self.delegate?.stopLoader()
            self.delegate?.reloadTableView()
        } failure: { error in
            self.delegate?.stopLoader()
            self.delegate?.showError(error)
        }
    }
    
    func buildURL() -> String {
        var url = Endpoint.baseURL + Endpoint.mostPopular
        
        switch data.filter.type {
        
        case Constants.Title.emailed:
            url += Endpoint.emailed
            
        case Constants.Title.shared:
            url += Endpoint.shared
            
        case Constants.Title.viewed:
            url += Endpoint.viewed
            
        default:
            break
        }
        
        switch data.filter.period {
        
        case Constants.Title.day:
            url += Endpoint.day
            
        case Constants.Title.week:
            url += Endpoint.week
            
        case Constants.Title.month:
            url += Endpoint.month
            
        default:
            break
        }
        
        if data.filter.type == Constants.Title.shared {
            
            if data.filter.fonts.contains(Constants.Title.facebook) && data.filter.fonts.contains(Constants.Title.twitter) {
                url += Endpoint.facebookAndTwitter
            }
            
            if data.filter.fonts.contains(Constants.Title.facebook) {
                url += Endpoint.facebook
            } else if data.filter.fonts.contains(Constants.Title.twitter) {
                url += Endpoint.twitter
            }
        }
        
        url += Endpoint.jsonEnd
        
        return url
    }
}
