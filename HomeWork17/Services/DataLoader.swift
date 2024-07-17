//
//  DataLoader.swift
//  HomeWork17
//
//  Created by Aleksandr Moroshovskyi on 20.04.2024.
//

import Foundation

class DataLoader {
    
    func getTitleData() -> [TitleCellDisplayModel] {
        
        var models: [TitleCellDisplayModel] = []
        
        for i in 0 ... 2 {
            let newModel = TitleCellDisplayModel(
                titleText: "Title: \(i + 1)",
                img: "applelogo"
            )
            models.append(newModel)
        }
        
        return models
    }
    
    func getSettingsData() -> [SettingsCellDisplayModel] {
        
        var models: [SettingsCellDisplayModel] = []
        
        for i in 0 ... 2 {
            let newModel = SettingsCellDisplayModel(
                titleText: "Settings: \(i + 1)",
                switcher: i%2 == 0 ? true : false
            )
            models.append(newModel)
        }
        
        return models
    }
    
    func getBuyData() -> [BuyCellDisplayModel] {
        
        var models: [BuyCellDisplayModel] = []
        
        for i in 0 ... 2 {
            let newModel = BuyCellDisplayModel(
                titleText: "Title: \(i + 1)",
                descriptionText: "description: \(i + 1)",
                img: "applelogo"
            )
            models.append(newModel)
        }
        
        return models
    }
}
