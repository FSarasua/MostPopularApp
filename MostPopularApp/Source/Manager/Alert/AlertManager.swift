//
//  AlertManager.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 01/11/2021.
//

import Foundation
import UIKit

class AlertManager {
    static let shared = AlertManager()
    
    func presentError(_ vc: UIViewController, _ error: ErrorModel, goBack: Bool = false) {
        let alert = UIAlertController(title: error.title, message: error.message, preferredStyle: .alert)
        
        if error.actions.count > 0 {
            
            for action in error.actions {
                
                let action = UIAlertAction(title: action.title, style: action.style, handler: action.handler)
                
                alert.addAction(action)
            }
        } else {
            let action = UIAlertAction(title: Constants.confirm, style: .default) { (action) in
                alert.dismiss(animated: true, completion: nil)
                
                if goBack {
                    guard let navigation = vc.navigationController else { return }
                    
                    navigation.popViewController(animated: true)
                }
            }
            alert.addAction(action)
        }
        vc.present(alert, animated: true, completion: nil)
    }
}
