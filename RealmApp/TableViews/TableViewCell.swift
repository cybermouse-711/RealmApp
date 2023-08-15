//
//  TableViewCell.swift
//  RealmApp
//
//  Created by Елизавета Медведева on 15.08.2023.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import UIKit

// MARK: - Extensions
extension UITableViewCell {
    func configur(_ taskList: TaskList) {
        let taskCurrent = taskList.tasks.filter("isComplete = false")
        
        var content = defaultContentConfiguration()
        content.text = taskList.title
 
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if taskCurrent.isEmpty {
            content.secondaryText = nil
            accessoryType = .checkmark
        } else if !taskCurrent.isEmpty {
            content.secondaryText = taskCurrent.count.formatted()
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}
