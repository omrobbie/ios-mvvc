//
//  View.swift
//  ios-mvvc
//
//  Created by omrobbie on 07/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class View: UIView {

    @IBOutlet weak var tableView: UITableView!
}

extension View: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = "Item \(indexPath.row)"
        cell.detailTextLabel?.text = "Title"
        return cell
    }
}
