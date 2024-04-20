//
//  TitleSectionAdapter.swift
//  HomeWork17
//
//  Created by Aleksandr Moroshovskyi on 20.04.2024.
//

import UIKit

protocol TitleSectionAdapterOutput: AnyObject {
    
    func titleItemsCount() -> Int
    func titleItem(at indexPath: IndexPath) -> TitleCellDisplayModel
    
    func goAction(at indexPath: IndexPath)
}

class TitleSectionAdapter {
    
    private weak var output: TitleSectionAdapterOutput!
    
    required init(output: TitleSectionAdapterOutput) {
        self.output = output
    }
}

// MARK: SectionAdapterInput
extension TitleSectionAdapter: SectionAdapterInput {
    
    func registerCells(in tableView: UITableView) {
        
        let nib = UINib(nibName: TitleCell.idintifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: TitleCell.idintifier)
    }
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        
        return output.titleItemsCount()
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleCell.idintifier, for: indexPath) as? TitleCell
        else {
            assertionFailure()
            return UITableViewCell()
        }
        
        let model = output.titleItem(at: indexPath)
        cell.setup(with: model)
        
        cell.goCompletion = { [weak self] in
            guard let self = self else { return }
            
            self.output.goAction(at: indexPath)
        }
        
        return cell
    }
}
