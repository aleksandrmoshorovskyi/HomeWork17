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
            let newModel = TitleCellDisplayModel(titleText: "Title: \(i + 1)", img: "")
            models.append(newModel)
        }
        
        return models
    }
}
