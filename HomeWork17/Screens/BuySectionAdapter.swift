//
//  BuySectionAdapter.swift
//  HomeWork17
//
//  Created by Aleksandr Moroshovskyi on 20.04.2024.
//

import UIKit

protocol BuySectionAdapterOutput: AnyObject {
    
    func buyItemsCount() -> Int
    func buyItem(at indexPath: IndexPath) -> BuyCellDisplayModel
    
    func buyButtonAction(at indexPath: IndexPath)
}

class BuySectionAdapter {
    
    private weak var output: BuySectionAdapterOutput!
    
    required init(output: BuySectionAdapterOutput) {
        self.output = output
    }
}

// MARK: SectionAdapterInput
extension BuySectionAdapter: SectionAdapterInput {
    
    func registerCells(in tableView: UITableView) {
        
        let nib = UINib(nibName: BuyCell.idintifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: BuyCell.idintifier)
    }
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        
        return output.buyItemsCount()
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BuyCell.idintifier, for: indexPath) as? BuyCell
        else {
            assertionFailure()
            return UITableViewCell()
        }
        
        let model = output.buyItem(at: indexPath)
        cell.setup(with: model)
        
        cell.buyCompletion = { [weak self] in
            guard let self = self else { return }
            
            self.output.buyButtonAction(at: indexPath)
        }
        
        return cell
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        
        return 88.0
    }
}
