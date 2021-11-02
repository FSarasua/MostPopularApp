//
//  ResultTableViewCell.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    // MARK: - IBOutlet
    @IBOutlet weak var imgFront: UIImageView!
    
    @IBOutlet weak var lbTitle: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var lbSection: UILabel!
    @IBOutlet weak var lbAuthor: UILabel!
    @IBOutlet weak var lbDate: UILabel!
    
    // MARK: - Variable
    var cellModel: ResultModel?
    
    // MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        cellModel = nil
    }
    
    func loadCell() {
        guard let model = cellModel else { return }
        
        if let url = URL(string: model.urlImage) {
            imgFront.af.setImage(withURL: url)
        }
        lbTitle.text = model.title
        lbSection.text = model.section
        lbAuthor.text = model.author
        lbDate.text = model.publishedDate
    }
}
