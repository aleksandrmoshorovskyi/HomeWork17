//
//  BuyCell.swift
//  HomeWork17
//
//  Created by Aleksandr Moroshovskyi on 20.04.2024.
//

import UIKit

class BuyCell: UITableViewCell {
    
    static let idintifier = "BuyCell"
    
    var buyCompletion: (() -> ())?
    
    @IBOutlet weak var titleTextLable: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var buyButton: UIButton!
    
    @IBAction func buyButton(_ sender: Any) {
        
        buyCompletion?()
    }
    
    func setup(with model: BuyCellDisplayModel) {
        
        titleTextLable.text = model.titleText
        descriptionText.text = model.descriptionText
        imgView.image = UIImage(systemName: model.img)
    }
}
