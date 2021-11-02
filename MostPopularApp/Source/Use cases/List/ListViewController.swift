//
//  ListViewController.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 01/11/2021.
//

import UIKit

protocol ListViewProtocol {
    func showError(_ error: ErrorModel)
    func reloadTableView()
    func stopLoader()
}

class ListViewController: BaseViewController, ListViewProtocol {

    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    
    // MARK: - Variable
    var viewModel: ListViewModel?
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
    }
    
    // MARK: - Private Methods
    private func loadData() {
        // Table View
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: "ResultID")
        
        // Navigation Controller
        hideNavigationBar(false)
        title = Constants.Title.result
        
        // Activity Indicator View
        activityIndicatorView.startAnimating()
        
        // Request Data
        viewModel?.startSearch()
    }
    
    func showError(_ error: ErrorModel) {
        AlertManager.shared.presentError(self, error)
    }
    
    func reloadTableView() {
        tableView.reloadData()
    }
    
    func stopLoader() {
        activityIndicatorView.stopAnimating()
    }
}

extension ListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel?.data.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ResultID") as? ResultTableViewCell, let model = viewModel {
            
            cell.cellModel = model.data.results[indexPath.row]
            
            cell.loadCell()
        
            return cell
        }
        
        let cell = UITableViewCell()
        
        cell.backgroundColor = UIColor(displayP3Red: .random(in: 0.0...1.0), green: .random(in: 0.0...1.0), blue: .random(in: 0.0...1.0), alpha: .random(in: 0.0...1.0))
        
        return cell
    }
}

extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        400
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let navigation = navigationController, let model = viewModel else { return }
        
        navigation.pushViewController(DetailRouter.view(result: model.data.results[indexPath.row]), animated: true)
    }
}
