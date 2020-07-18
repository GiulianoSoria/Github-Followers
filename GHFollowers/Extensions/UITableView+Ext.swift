//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Giuliano Soria on 6/6/20.
//  Copyright © 2020 Giuliano Soria. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
