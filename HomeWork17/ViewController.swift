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
    
    var models: [TitleCellDisplayModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models = DataLoader().getTitleData()
        
        let titlrSection = TitleSectionAdapter(output: self)
        
        let adapter = TableViewAdapter()
        adapter.sections = [
            titlrSection
        ]
        
        tableAdapter = adapter
        tableAdapter.setup(with: tableView)
    }
}

// MARK: TitleSectionAdapterOutput
extension ViewController: TitleSectionAdapterOutput {
    
    func titleItemsCount() -> Int {
        
        return models.count
    }
    
    func titleItem(at indexPath: IndexPath) -> TitleCellDisplayModel {
        
        return models[indexPath.row]
    }
    
    func goAction(at indexPath: IndexPath) {
        
        let item = models[indexPath.row]
        
        print(item.titleText)
    }
}
