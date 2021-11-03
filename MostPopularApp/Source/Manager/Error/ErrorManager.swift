//
//  ErrorManager.swift
//  Apps Challenge
//
//  Created by Francisco Javier Sarasua Galan on 11/05/2021.
//

import Foundation

struct ErrorManager {
    
    static let sharedInstance = ErrorManager()

    func parseToErrorModel(error: Error?, type: ErrorType) -> ErrorModel {
        let model = ErrorModel()
         
        model.title = ErrorManager.getErrorTitle(type: type)
        model.type = type
        model.message = error?.localizedDescription ?? ""
        model.debugMessage = error.debugDescription
        
        if let afError = error?.asAFError {
            model.code = afError.responseCode ?? -1
        }
        
        return model
    }
    
    static func getErrorTitle(type: ErrorType) -> String {
        
        switch type {
        case .webView:
            return Constants.Title.Error.webView
        case .service:
            return Constants.Title.Error.service
        case .JSONParser:
            return Constants.Title.Error.jsonParser
        default:
            return Constants.Title.Error.byDefault
        }
    }
    
    static func getErrorMessage(type: ErrorType) -> String {
        
        switch type {
        case .webView:
            return Constants.Message.Error.webView
        default:
            return Constants.Message.Error.byDefault
        }
    }
}
