//
//  Constants.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

struct Constants {
    static let confirm = "Aceptar"
    
    struct Title {
        static let filter = "Filtro"
        static let result = "Resultado"
        static let detail = "Detalle"
        
        static let emailed = "Emailed"
        static let shared = "Shared"
        static let viewed = "Viewed"
        
        static let day = "1 día"
        static let week = "7 días"
        static let month = "30 días"
        
        static let facebook = "Facebook"
        static let twitter = "Twitter"
        
        struct Error {
            static let webView = "Error de WebView"
            static let service = "Error de Servicio"
            static let jsonParser = "Error JSON"
            static let byDefault = "Error"
        }
    }
        
    struct Message {
        
        struct Error {
            static let webView = "Se ha producido un error. Volverá a la pantalla anterior."
            static let byDefault = "Se ha producido un error."
        }
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
