//
//  ViewController.swift
//  HomeWork17
//
//  Created by Aleksandr Moroshovskyi on 20.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var tableAdapter: TableViewAdapterInput!
    
    //Data models
    var titleModels: [TitleCellDisplayModel] = []
    var settingModels: [SettingsCellDisplayModel] = []
    var buyModels: [BuyCellDisplayModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Data models load
        titleModels = DataLoader().getTitleData()
        settingModels = DataLoader().getSettingsData()
        buyModels = DataLoader().getBuyData()
        
        //Sections
        let titlrSection = TitleSectionAdapter(output: self)
        let settingsSection = SettingsSectionAdapter(output: self)
        let buySection = BuySectionAdapter(output: self)
        
        //TableViewAdapter
        let adapter = TableViewAdapter()
        adapter.sections = [
            titlrSection,
            settingsSection,
            buySection
        ]
        
        tableAdapter = adapter
        tableAdapter.setup(with: tableView)
    }
}
