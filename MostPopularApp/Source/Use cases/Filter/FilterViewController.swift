//
//  FilterViewController.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 01/11/2021.
//

import UIKit

class FilterViewController: BaseViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var viewScrollContent: UIView!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var lbTitle: UILabel!
    
    @IBOutlet weak var lbDescription: UILabel!
    
    // Article
    @IBOutlet weak var viewArticle: UIView!
    @IBOutlet weak var lbArticleTitle: UILabel!
    @IBOutlet weak var scArticle: UISegmentedControl!
    
    // Font
    @IBOutlet weak var viewFontArticle: UIView!
    @IBOutlet weak var lbTitleFont: UILabel!
    
    // Facebook
    @IBOutlet weak var lbFacebook: UILabel!
    @IBOutlet weak var switchFacebook: UISwitch!
    
    // Twitter
    @IBOutlet weak var lbTwitter: UILabel!
    @IBOutlet weak var switchTwitter: UISwitch!
    
    // Period
    @IBOutlet weak var viewPeriod: UIView!
    @IBOutlet weak var lbTitlePeriod: UILabel!
    @IBOutlet weak var scPeriod: UISegmentedControl!
    
    // Button Confirm
    @IBOutlet weak var btnConfirm: UIButton!
    
    // MARK: - Variables
    var viewModel: FilterViewModel?
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        loadStyle()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Navigation Controller
        hideNavigationBar(true)
    }
    
    // MARK: - Private Methods
    private func loadData() {
        // Navigation Controller
        hideNavigationBar(true)
        title = Constants.Title.filter
    }
    
    private func loadStyle() {
        // View Font Article
        viewFontArticle.layer.cornerRadius = 10.0
        viewFontArticle.layer.borderWidth = 0.5

        viewFontArticle.isHidden = true
        
        // Button Confirm
        btnConfirm.layer.cornerRadius = 10.0
        btnConfirm.layer.borderWidth = 0.5
    }
    
    // MARK: - Actions
    @IBAction func articleValueChanged(_ sender: UISegmentedControl) {
        viewFontArticle.isHidden = sender.selectedSegmentIndex == 1 ? false : true
    }
    
    @IBAction func confirmTouchUpInside(_ sender: Any) {
        guard let navigation = navigationController, let model = viewModel else { return }
        
        var fonts = [String]()
        let type = scArticle.titleForSegment(at: scArticle.selectedSegmentIndex) ?? ""
        let period = scPeriod.titleForSegment(at: scPeriod.selectedSegmentIndex) ?? ""
        
        if switchFacebook.isOn, let text = lbFacebook.text {
            fonts.append(text)
        }
        
        if switchTwitter.isOn, let text = lbTwitter.text {
            fonts.append(text)
        }
        
        model.data = FilterModel(
            type: type,
            fonts: fonts,
            period: period)

        navigation.pushViewController(ListRouter.view(filter: model.data), animated: true)
    }
}
