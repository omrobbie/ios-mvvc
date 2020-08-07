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

    var data = dummyData
}

extension View: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let item = data[indexPath.row]
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.title
        return cell
    }
}
