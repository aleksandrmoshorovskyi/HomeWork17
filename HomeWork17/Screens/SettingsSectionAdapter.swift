//
//  SettingsSectionAdapter.swift
//  HomeWork17
//
//  Created by Aleksandr Moroshovskyi on 20.04.2024.
//

import UIKit

protocol SettingsSectionAdapterOutput: AnyObject {
    
    func settingItemsCount() -> Int
    func settingItem(at indexPath: IndexPath) -> SettingsCellDisplayModel
    
    func switcherAction(at indexPath: IndexPath)
}

class SettingsSectionAdapter {
    
    private weak var output: SettingsSectionAdapterOutput!
    
    required init(output: SettingsSectionAdapterOutput) {
        self.output = output
    }
}

// MARK: SectionAdapterInput
extension SettingsSectionAdapter: SectionAdapterInput {
    
    func registerCells(in tableView: UITableView) {
        
        let nib = UINib(nibName: SettingsCell.idintifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: SettingsCell.idintifier)
    }
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        
        return output.settingItemsCount()
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsCell.idintifier, for: indexPath) as? SettingsCell
        else {
            assertionFailure()
            return UITableViewCell()
        }
        
        let model = output.settingItem(at: indexPath)
        cell.setup(with: model)
        
        cell.switcherCompletion = { [weak self] in
            guard let self = self else { return }
            
            self.output.switcherAction(at: indexPath)
        }
        
        return cell
    }
}
