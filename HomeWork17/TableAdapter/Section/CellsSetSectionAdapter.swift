//
//  CellsSetSectionAdapter.swift
//  Lesson17
//
//  Created by user on 15.04.2024.
//

import UIKit

class CellsSetSectionAdapter {

    var cellAdapters: [CellAdapterInput] = []
}

// MARK: - SectionAdapterInput
extension CellsSetSectionAdapter: SectionAdapterInput {

    func registerCells(in tableView: UITableView) {
        cellAdapters.forEach { $0.registerCell(in: tableView) }
    }

    func numberOfRows(in section: Int) -> Int {
        return cellAdapters.count
    }

    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        return cellAdapters[indexPath.row].cellForRow(at: indexPath, in: tableView)
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return cellAdapters[indexPath.row].heightForRow(at: indexPath, in: tableView)
    }
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        return cellAdapters[indexPath.row].didSelectRow(at: indexPath, in: tableView)
    }
}
