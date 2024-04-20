//
//  TitleCell.swift
//  HomeWork17
//
//  Created by Aleksandr Moroshovskyi on 20.04.2024.
//

import UIKit

class TitleCell: UITableViewCell {
    
    var goCompletion: (() -> ())?
    
    @IBOutlet weak var titleTextLable: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var goButton: UIButton!
    
    @IBAction func buyButton(_ sender: Any) {
        
        goCompletion?()
    }
    
    func setup(with model: TitleCellDisplayModel) {
        
        titleTextLable.text = model.titleText
        imgView.image = UIImage(systemName: "")
    }
}
