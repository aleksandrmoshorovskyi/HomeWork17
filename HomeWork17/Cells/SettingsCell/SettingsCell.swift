//
//  SettingsCell.swift
//  HomeWork17
//
//  Created by Aleksandr Moroshovskyi on 20.04.2024.
//

import UIKit

class SettingsCell: UITableViewCell {
    
    static let idintifier = "SettingsCell"
    
    var switcherCompletion: (() -> ())?
    
    @IBOutlet weak var titleTextLable: UILabel!
    @IBOutlet weak var switcher: UISwitch!
    
    @IBAction func switchAction(_ sender: Any) {
        
        switcherCompletion?()
    }
    
    func setup(with model: SettingsCellDisplayModel) {
        
        titleTextLable.text = model.titleText
        switcher.isOn = model.switcher
    }
}
