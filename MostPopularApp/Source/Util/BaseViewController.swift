//
//  BaseViewController.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 01/11/2021.
//

import UIKit

class BaseViewController: UIViewController {
    
    // MARK: - Variables
    var statusBarUnderlay = UIView(frame: UIApplication.shared.statusBarFrame)

    override func viewDidLoad() {
        super.viewDidLoad()
        statusBarUnderlay.backgroundColor = .white
    }
    
    // MARK: - Public Method's   
    func hideNavigationBar(_ isHidden: Bool) {
        guard let navigation = navigationController else { return }
        
        navigation.isNavigationBarHidden = isHidden
        
        if isHidden {
            view.addSubview(statusBarUnderlay)
        } else {
            statusBarUnderlay.removeFromSuperview()
        }
    }
}
