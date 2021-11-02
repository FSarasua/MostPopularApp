//
//  ButtonModel.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation
import UIKit

class AlertActionModel {
    var title: String
    var style: UIAlertAction.Style
    var handler: ((UIAlertAction) -> Void)?
    
    init() {
        self.title = ""
        self.style = .default
        self.handler = { (action) in }
    }
    
    internal init(title: String, style: UIAlertAction.Style = .default, handler: ((UIAlertAction) -> Void)? ) {
        self.title = title
        self.style = style
        self.handler = handler
    }
}
