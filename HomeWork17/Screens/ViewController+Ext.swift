//
//  ViewController+Ext.swift
//  HomeWork17
//
//  Created by Aleksandr Moroshovskyi on 20.04.2024.
//

import Foundation

// MARK: - TitleSectionAdapterOutput
extension ViewController: TitleSectionAdapterOutput {
    
    func titleItemsCount() -> Int {
        
        return titleModels.count
    }
    
    func titleItem(at indexPath: IndexPath) -> TitleCellDisplayModel {
        
        return titleModels[indexPath.row]
    }
    
    func goAction(at indexPath: IndexPath) {
        
        let item = titleModels[indexPath.row]
        
        print(item.titleText)
    }
}

// MARK: - SettingsSectionAdapterOutput
extension ViewController: SettingsSectionAdapterOutput {
    
    func settingItemsCount() -> Int {
        
        return settingModels.count
    }
    
    func settingItem(at indexPath: IndexPath) -> SettingsCellDisplayModel {
        
        return settingModels[indexPath.row]
    }
    
    func switcherAction(at indexPath: IndexPath) {
        
        let item = settingModels[indexPath.row]
        
        print("\(item.titleText) - switcher did change")
    }
}

// MARK: - BuySectionAdapterOutput
extension ViewController: BuySectionAdapterOutput {
    
    func buyItemsCount() -> Int {
        
        return buyModels.count
    }
    
    func buyItem(at indexPath: IndexPath) -> BuyCellDisplayModel {
        
        return buyModels[indexPath.row]
    }
    
    func buyButtonAction(at indexPath: IndexPath) {
        
        let item = buyModels[indexPath.row]
        
        print(item.titleText)
    }
}
