//
//  ErrorModel.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

class ErrorModel {
    var title: String
    var message: String
    var debugMessage: String
    var actions: [AlertActionModel]
    var code: Int
    var type: ErrorType
    
    init() {
        self.title = Constants.Title.Error.byDefault
        self.message = Constants.Message.Error.byDefault
        self.debugMessage = ""
        self.actions = []
        self.code = -1
        self.type = .none
    }
    
    internal init(title: String? = nil, message: String? = nil, debugMessage: String? = nil, actions: [AlertActionModel]? = nil, code: Int? = nil, type: ErrorType) {
        
        self.title = Constants.getErrorTitle(type: type)
        self.message = Constants.getErrorMessage(type: type) 
        self.debugMessage = debugMessage ?? ""
        self.actions = actions ?? []
        self.code = code ?? -1
        self.type = type
    }
}
