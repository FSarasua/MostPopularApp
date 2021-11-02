//
//  MostPopularAPI.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

class MostPopularAPI {
    
    static let shared = MostPopularAPI()
    
    func request(_ url: String, success: @escaping (ListServerModel) -> Void, failure: @escaping (ErrorModel) -> Void) {
        
        AlamofireManager.shared.request(url) { data in
            
            do {
                let serverModel = try JSONDecoder().decode(ListServerModel.self, from: data)

                success(serverModel)
            } catch {
                let errorModel: ErrorModel = ErrorManager.sharedInstance.parseToErrorModel(error: error, type: .JSONParser)
                
                failure(errorModel)
            }
        } failure: { error in
            let errorModel: ErrorModel = ErrorManager.sharedInstance.parseToErrorModel(error: error, type: .service)
            
            failure(errorModel)
        }
    }
}
