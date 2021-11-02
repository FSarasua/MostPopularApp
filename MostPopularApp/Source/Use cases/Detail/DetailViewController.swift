//
//  DetailViewController.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 01/11/2021.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    // MARK: - Variables
    private var webView: WKWebView!

    var viewModel: DetailViewModel?
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
    }
    
    // MARK: - Private Methods
    private func loadData() {
        // Navigation Bar
        if let title = viewModel?.data.title {
            self.title = title
        }

        // Web View
        let preferences = WKPreferences()
        preferences.javaScriptEnabled = true
        preferences.javaScriptCanOpenWindowsAutomatically = true

        let configuration = WKWebViewConfiguration()
        configuration.preferences = preferences

        webView = WKWebView(frame: view.frame, configuration: configuration)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        view.addSubview(webView)
        
        loadURL()
    }
    
    private func loadURL() {
        guard let model = viewModel, let url = URL(string: model.data.url) else {
            showError()
            return
        }
        
        webView.load(URLRequest(url: url))
    }
    
    private func showError() {
        AlertManager.shared.presentError(self, ErrorModel(title: Constants.Title.Error.byDefault, type: .webView), goBack: true)
    }
}
